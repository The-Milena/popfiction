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
    @booking.user = @user_id
    if @booking.save
      redirect_to places_path(@place)
    else
      Rails.logger.debug { "Rental save failed: #{@booking.errors.full_messages}" } 
      flash[:alert] = "Erreur : #{@booking.errors.full_messages.join(', ')}"
      render "places/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to place_path(@booking.place), notice: "Booking was successfully deleted."
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :nb_of_guests)
  end

end
