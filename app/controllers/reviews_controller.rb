class ReviewsController < ApplicationController

  def new           # GET /profiles/new
  end

  def create        # POST /profiles
  end


private
  def review_params
    params.require(:review).permit(:content, :title_review)
  end

end
