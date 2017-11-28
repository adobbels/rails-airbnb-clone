class ReviewsController < ApplicationController

  def new           # GET /profiles/new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create        # POST /profiles
    @profile = current_user.profile
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.profile = @profile
    if @review.save
      redirect_to flat_path(@flat)
    else
      render :new
    end

  end

private
  def review_params
    params.require(:review).permit(:content, :title_review)
  end

end
