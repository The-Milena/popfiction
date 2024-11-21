class CarsController < ApplicationController
  before_action :set_car, only: [:show]
  def index
    @cars = Car.all # Affiche toutes les cars
  end

  # Affiche une place spécifique
  def show
    @booking = Booking.new
    
  end

  private


  def set_car
    @car = Car.find(params[:id])
  end
#  # Charge une place spécifique en fonction de son ID
#  def set_place
#    @place = Place.find(params[:id])
#  end
#
#  # Vérifie que l'utilisateur connecté est le propriétaire de la place
#  def authorize_user!
#    redirect_to places_path, alert: "You are not authorized to perform this action." unless @place.user == current_user
#  end
#
#  # Permet uniquement certains paramètres pour la sécurité
#  def place_params
#    params.require(:place).permit(:address, :beds, :price, :description, photos:[])
#  end
end
