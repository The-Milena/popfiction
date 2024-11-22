class AddCarRefToBookings < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :car, null: true, foreign_key: true
  end
end
