class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relations
  has_many :bookings
  has_many :places, dependent: :destroy # Ajoute la relation avec Place
  has_one_attached :photo

  # Validations
  validates :email, uniqueness: true
  validates :email, :password, :last_name, :first_name, presence: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end
