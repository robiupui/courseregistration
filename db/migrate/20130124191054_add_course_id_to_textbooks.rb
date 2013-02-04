class AddCourseIdToTextbooks < ActiveRecord::Migration
  def change
    add_column :textbooks, :course_id, :integer
  end
end
