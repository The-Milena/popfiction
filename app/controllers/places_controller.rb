class PlacesController < ApplicationController
  # Vérifie que l'utilisateur est connecté pour les actions sensibles
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  # Liste toutes les places
  def index
    @places = Place.all
  end

  # Affiche une place spécifique
  def show
  end

  # Affiche le formulaire pour créer une nouvelle place
  def new
    @place = Place.new
  end

  # Crée une nouvelle place
  def create
    @place = current_user.places.build(place_params) # Associe la place à l'utilisateur connecté
    if @place.save
      redirect_to @place, notice: "Place was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Affiche le formulaire pour modifier une place existante
  def edit
  end

  # Met à jour une place existante
  def update
    if @place.update(place_params)
      redirect_to @place, notice: "Place was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Supprime une place
  def destroy
    @place.destroy
    redirect_to places_path, notice: "Place was successfully deleted."
  end

  private

  # Charge une place spécifique en fonction de son ID
  def set_place
    @place = Place.find(params[:id])
  end

  # Vérifie que l'utilisateur connecté est le propriétaire de la place
  def authorize_user!
    redirect_to places_path, alert: "You are not authorized to perform this action." unless @place.user == current_user
  end

  # Permet uniquement certains paramètres pour la sécurité
  def place_params
    params.require(:place).permit(:address, :beds, :price, :description, :picture)
  end
end
