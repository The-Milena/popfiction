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
      redirect_to place_path(@place, popup: true)
    else
      render "places/show", status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @booking.save
    redirect_to place_path(@booking.place)
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
