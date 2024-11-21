class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings = Booking.all
    @places = Place.where(user_id: current_user.id)
    @booking_travels = @bookings.where(user_id: current_user.id)
  end
end

# def dreamsdashboard
#   @user = current_user
#   @dreams = Dream.where(user: current_user)
#   @bookings = Booking.where(dream_id: @dreams.pluck(:id))
# end

# SELECT * FROM bookings WHERE uder_id = current_user
# JOIN booking ON place
