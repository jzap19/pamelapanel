class Course < ApplicationRecord
  has_many :cohort, dependent: :destroy
end
