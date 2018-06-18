class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
      t.date :start_date
      t.date :end_date
      t.string :instructor_teaching
      t.integer :students_in_cohort
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
