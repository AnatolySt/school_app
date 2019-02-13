# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

schools = School.create([{title: 'First School'}, {title: 'Second School'}])

courses_a = Course.create([{title: '1-A', school: schools.first}, {title: '2-A', school: schools.first}])
courses_b = Course.create([{title: '1-B', school: schools.last}, {title: '2-B', school: schools.last}])
course_math = Course.create(title: 'Mathematics', school: schools.first)

Pupil.create([{full_name: 'Anatoly Stupin', courses: [courses_a.first, course_math]},
              {full_name: 'Dmitry Kharchenko', courses: [courses_a.first]},
              {full_name: 'Nikola Tesla', courses: [courses_a.last]},
              {full_name: 'Albert Einstein', courses: [courses_a.last]},
              {full_name: 'Hank Riarden', courses: [courses_b.first]},
              {full_name: 'Dagni Taggert', courses: [courses_b.first]},
              {full_name: 'Djon Golt', courses: [courses_b.last]},
              {full_name: "Francisko D'Ankonia", courses: [courses_b.last]}])



