class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def show
    @animal = Animal.find(params[:id])
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

  private

  def animal_params
    params.require(:animal).permit(:species, :name, :characteristics, :availability_start, :availability_end, :location, :photo, :price)
  end
end
