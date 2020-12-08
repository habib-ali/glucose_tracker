class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :blood_gulcose_readings, dependent: :destroy
  
  def name
    first_name.to_s + " " + last_name.to_s
  end
end
