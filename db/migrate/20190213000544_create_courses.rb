class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :school, index: true
      t.timestamps
    end
  end
end
