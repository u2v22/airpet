class UsersController < ApplicationController
  def show
    @bookings = current_user.bookings
    allbookings = Booking.all
    @requests = []
    @animals = []
    current_user.animals.each do |animal|
      @animals << animal.id
    end
    allbookings.each do |booking|
      if @animals.include?(booking.animal_id)
        @requests << booking
      end
    end
  end
end
