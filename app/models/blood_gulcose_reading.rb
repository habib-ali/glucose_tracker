class BloodGulcoseReading < ApplicationRecord
  belongs_to :user
  enum reading_type: %i[mg dl]
  delegate :name, to: :user, prefix: :user

  validates :value, presence: true
  validate :per_user_quota
  
  def per_user_quota
    self.errors.add(:user, " have reached his maximum blood glucose reading limit") if ( self.user.blood_gulcose_readings.where("date = ?", self.date).count >= 4 )
  end

end
