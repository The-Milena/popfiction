class ChangeDateEndToBeDateInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :date_end, :date
  end
end
