class BookingsController < ApplicationController

  def show
    @place = Place.find(params[:place_id])
    @booking = Booking.find(params[:id])
    @booking.place = @place
    @booking.save
  end

  def new
    @place = Place.find(params[:place_id])
    @booking = Booking.new
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = Booking.new(booking_params)
    @booking.place = @place
    @booking.save
    redirect_to places_path(@place)
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :nb_of_guests, :place_id)
  end

end
