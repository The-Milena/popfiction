class PlacesController < ApplicationController
  # Vérifie que l'utilisateur est connecté pour les actions sensibles
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]

  def index

    @categories = Place.distinct.pluck(:category) # Récupère toutes les catégories uniques
    if params[:category].present?
      @places = Place.where(category: params[:category]) # Filtre les places par catégorie
    else
      @places = Place.all # Affiche toutes les places
    end


    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {place: place})
      }
    end

    if params[:query].present?
      sql_subquery = <<~SQL
      places.name ILIKE :query
      OR places.description ILIKE :query
      OR users.first_name ILIKE :query
      OR users.last_name ILIKE :query
    SQL
    @places = @places.joins(:user).where(sql_subquery, query: "%#{params[:query]}%")

    end
  end

  # Affiche une place spécifique
  def show
    @booking = Booking.new
     @markers = [{
    lat: @place.latitude,
    lng: @place.longitude,
    info_window_html: render_to_string(partial: "info_window", locals: { place: @place })
  }]
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
    @place = Place.find(params[:id])
    if @place.user == current_user
      @place.destroy
      redirect_to places_path, notice: "Place was successfully deleted."
    else
      redirect_to places_path, alert: "You are not authorized to delete this place."
    end
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
    params.require(:place).permit(:address, :beds, :price, :description, photos:[])
  end
end
