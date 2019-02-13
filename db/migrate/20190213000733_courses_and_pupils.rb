class CoursesAndPupils < ActiveRecord::Migration[5.2]
  def change
    create_table :courses_pupils do |t|
      t.belongs_to :pupil, index: true
      t.belongs_to :course, index: true
    end
  end
end
