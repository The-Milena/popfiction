class CarsController < ApplicationController
  # Vérifie que l'utilisateur est connecté pour les actions sensibles

  def index
    @cars = Car.all # Affiche toutes les places
  end

  # Affiche une place spécifique
  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  private

  # Charge une place spécifique en fonction de son ID
  def set_place
    @car = Car.find(params[:id])
  end

  # Permet uniquement certains paramètres pour la sécurité
  def place_params
    params.require(:car).permit(:name, :description, :price)
  end
end
