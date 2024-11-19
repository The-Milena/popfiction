class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @place = Place.find(params[:place_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :nb_of_guests, :place_id)
  end

end
