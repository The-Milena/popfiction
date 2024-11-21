class Booking < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :date_end, :date_start, presence: true
  validates :date_end, comparison: { greater_than: :date_start }
  validates :date_end, comparison: { greater_than: Date.today }
  validates :date_start, comparison: { greater_than: Date.today }
  validates :nb_of_guests, presence: true, numericality: { only_integer: true, greater_than: 0 }
  enum :status, { pending: 0, accepted: 1, refused: 2 }
end
