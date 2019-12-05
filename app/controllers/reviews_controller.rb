class ReviewsController < ApplicationController
  def create
    @booking = Booking.new
    @review = Review.new(review_params)
    @animal = Animal.find(params[:animal_id])
    @review.animal = @animal
    if @review.save
      redirect_to animal_path(@animal)
    else
      render "animals/show"
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to animal_path(@animal)
  # end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
