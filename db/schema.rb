# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_13_120048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "courses_pupils", force: :cascade do |t|
    t.bigint "pupil_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_courses_pupils_on_course_id"
    t.index ["pupil_id"], name: "index_courses_pupils_on_pupil_id"
  end

  create_table "pupils", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_view "summaries", materialized: true, sql_definition: <<-SQL
      SELECT ( SELECT count(*) AS count
             FROM schools) AS schools_count,
      ( SELECT avg(courses_avg.courses_count) AS avg
             FROM ( SELECT DISTINCT courses.school_id,
                      count(courses.id) AS courses_count
                     FROM courses
                    GROUP BY courses.school_id) courses_avg) AS courses_avg,
      ( SELECT avg(pupils_avg.pupils_count) AS avg
             FROM ( SELECT DISTINCT courses_pupils.course_id,
                      count(courses_pupils.pupil_id) AS pupils_count
                     FROM courses_pupils
                    GROUP BY courses_pupils.course_id) pupils_avg) AS pupils_avg;
  SQL
end
