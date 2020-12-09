class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable
  
  has_many :blood_gulcose_readings, dependent: :destroy
  after_create :assign_default_role

  def assign_default_role
    self.add_role(:patient) if self.roles.blank?
  end
  def name
    first_name.to_s + " " + last_name.to_s
  end
end
