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
    @user_id = current_user
    if @booking.save
      redirect_to places_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :nb_of_guests, :user_id)
  end

end
