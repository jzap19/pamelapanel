class Student < ApplicationRecord
  has_many :students_cohorts, dependent: :destroy
end
