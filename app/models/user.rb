class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  validates :email, uniqueness: true
  validates :email, :password, :last_name, :first_name, presence: true
  validates :passord, length: { minimum: 8 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end
