class AnimalsController < ApplicationController
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
    # if @animal.save
    #   redirect_to user_path
    # else
    #   render :new
    # end
  end

  private

  def animal_params
    params.require(:animal).permit(:species, :name, :characteristics, :availability, :location, :photo, :price)
  end
end
