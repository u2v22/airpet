class AnimalsController < ApplicationController
  before_action :animal_find, only: [:edit, :update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @animals = Animal.all
    @animals = Animal.geocoded # Animal.wherenot(lat:nil, lng: nil)
      #
    @markers = @animals.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude
      }
    end
  end

  def new
    @animal = Animal.new
  end

  def show
    @user = current_user
    @booking = Booking.new
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    if @animal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @animal.update(animal_params)
  end

  def destroy
    @animal.destroy
    redirect_to user_path(current_user)
  end
  private

  def animal_find
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:species, :name, :characteristics, :availability_start, :availability_end, :location, :photo, :price)
  end
end
