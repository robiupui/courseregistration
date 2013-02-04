class CreateCoursesStudents < ActiveRecord::Migration
  def up
    create_table :courses_students, :id => false do |t|
      t.references :course
      t.references :student      
    end
  end

  def down
    drop_table :courses_students
  end
end
