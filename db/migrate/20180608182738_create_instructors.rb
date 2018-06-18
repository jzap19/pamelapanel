class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :salary
      t.string :highest_edu

      t.timestamps
    end
  end
end
