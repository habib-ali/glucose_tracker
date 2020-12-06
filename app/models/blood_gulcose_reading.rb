class BloodGulcoseReading < ApplicationRecord
  belongs_to :user
  enum reading_type: %i[mg dl]
  delegate :name, to: :user, prefix: :user
end
