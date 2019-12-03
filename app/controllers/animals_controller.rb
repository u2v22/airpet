class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(params[:id])
    # if @animal.save
    #   redirect_to user_path
    # else
    #   render :new
    # end
  end
end
