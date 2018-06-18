class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :total_class_hours

      t.timestamps
    end
  end
end
