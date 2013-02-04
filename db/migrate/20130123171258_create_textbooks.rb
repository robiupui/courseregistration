class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.string :title
      t.string :isbn

      t.timestamps
    end
  end
end
