class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :coursenumber
      t.string :coursename

      t.timestamps
    end
  end
end
