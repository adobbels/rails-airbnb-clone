class ReviewsController < ApplicationController

  def new           # GET /profiles/new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
    if user_signed_in?
      if current_user.profile.present?
      else
        redirect_to new_profile_path
        flash[:alert] = 'Please create a profile before booking.'
      end
    else
      redirect_to user_session_path
      flash[:alert] = 'Please log-in before booking.'
    end
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
        redirect_to new_profile_path
        flash[:alert] = 'Please create a profile before posting a review.'
    end
  end

private
  def review_params
    params.require(:review).permit(:content, :title_review)
  end

end
