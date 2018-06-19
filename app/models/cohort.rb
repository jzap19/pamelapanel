class Cohort < ApplicationRecord
  has_many :students_cohorts, dependent: :destroy
  belongs_to :instructor
  belongs_to :course
end
