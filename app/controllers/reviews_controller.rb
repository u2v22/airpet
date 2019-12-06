class ReviewsController < ApplicationController
  def create
    @booking = Booking.new
    @review = Review.new(review_params)
    @animal = Animal.find(params[:animal_id])
    @review.animal = @animal

    if @review.save
      respond_to do |format|
        format.html { redirect_to animal_path(@animal) }
        format.js  # render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'animals/show' }
        format.js  # render `app/views/reviews/create.js.erb`
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
