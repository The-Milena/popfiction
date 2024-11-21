class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :address, :beds, :price, presence: true
  validates :address, uniqueness: true
  validates :beds, numericality: { greater_than: 0 }
  validates :beds, numericality: { only_integer: true }
  validates :description, length: { minimum: 120 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :description ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
  
end
