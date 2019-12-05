class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
