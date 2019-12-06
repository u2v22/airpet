class AnimalsController < ApplicationController
  before_action :animal_find, only: %i[edit update show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # @animals = Animal.all

    if params[:query].present?
      sql_query = "animals.species @@ :query OR animals.location @@ :query OR animals.name @@ :query"
      @animals = Animal.where(sql_query, query: "%#{params[:query]}%")
    else
      @animals = Animal.geocoded # Animal.wherenot(lat:nil, lng: nil)
    end

    if params[:location].present?
      sql_query = "animals.location @@ :location"
      @animals = Animal.where(sql_query, location: "%#{params[:location]}%")
    else
      @animals = Animal.geocoded
    end

    @markers = @animals.map do |animal|
      {
        lat: animal.latitude,
        lng: animal.longitude,
        potato: animal.id,
        infoWindow: render_to_string(partial: "info_window", locals: { animal: animal })
      }
    end
  end

  def new
    @animal = Animal.new
  end

  def show
    @user = current_user
    @booking = Booking.new
    @reviews = Review.all
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
    respond_to do |format|
      format.html { user_path(current_user) } #if js not working respond with html
      format.js # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  private

  def animal_find
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:species, :name, :characteristics, :availability_start, :availability_end, :location, :photo, :price)
  end
end
