SELECT  (
    SELECT COUNT(*)
    FROM   schools
    ) AS schools_count,
    (
    SELECT AVG(courses_count)
    FROM   (
              SELECT DISTINCT(courses.school_id), COUNT(courses.id) AS courses_count
              FROM courses GROUP BY courses.school_id
           ) AS courses_avg
    ) AS courses_avg,
    (
    SELECT AVG(pupils_count)
    FROM (
              SELECT DISTINCT(course_id), COUNT(pupil_id) as pupils_count
              FROM courses_pupils GROUP BY course_id
         ) AS pupils_avg
    ) AS pupils_avg