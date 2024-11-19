class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :address, :beds, :price, :picture, presence: true
  validates :address, uniqueness: true
  validates :beds, numericality: { greater_than: 0 }
  validates :beds, numericality: { only_integer: true }
  validates :description, length: { minimum: 120 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :picture, presence: true
end
