class Instructor < ApplicationRecord
  has_many :instructors_cohort, dependent: :destroy
end
