class ReviewsController < ApplicationController

  def new           # GET /profiles/new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create        # POST /profiles
    @review = Review.new(review_params)
    @flat = Flat.find(params[:flat_id])
    @review.flat = @flat
    @review.save
  end

private
  def review_params
    params.require(:review).permit(:content, :title_review)
  end

end
