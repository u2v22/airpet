class BookingsController < ApplicationController
  before_action :booking_find, only: [:edit, :update, :show, :destroy, :accept, :decline]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.animal = Animal.find(animal_id)
    if @booking.save
      redirect_to user_path(current_user)
    else
      render "animal/show"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.destroy
    redirect_to user_path(current_user)
  end

  def accept
    @booking.update(status: "accepted")
    redirect_to user_path(current_user)
  end

  def decline
    @booking.update(status: "declined")
    redirect_to user_path(current_user)
  end

  private

  def booking_find
    @booking = Booking.find(params[:id])
  end

  def animal_params
    params.require(:booking).permit(:animal, :user, :start_date, :end_date)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def animal_id
    params.require(:booking).permit(:animal)[:animal]
  end
end
