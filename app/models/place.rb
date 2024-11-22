class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy # Assurez la suppression des bookings liés
  has_many_attached :photos

  # Validations
  validates :name, presence: true, uniqueness: true # Validation du champ 'name'
  validates :address, presence: true, uniqueness: true
  validates :beds, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { minimum: 40 }
  validates :category, presence: true, inclusion: { in: ['Cartoons & Animation', 'Fantasy Worlds', 'Horror & Mystery', 'Luxury', 'Royal Castles', 'Magical Worlds', 'Adventure & Sci-Fi'] }

  # Géocodage
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # Recherche globale avec PgSearch
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :description],
    associated_against: {
      user: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true } # Recherche sur des parties de mots
    }
end
