class ProfilesController < ApplicationController
skip_before_action :has_profile?
  def index         # GET /profiles
    @profiles = Profile.all
  end

  def show          # GET /profiles/:id
    @profile = Profile.find(current_user)
  end

  def new           # GET /profiles/new
    @profile = Profile.new
    @profile.user = current_user
  end

  def create        # POST /profiles
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:notice] = 'Profile was successfully created.'
      redirect_to user_profile_path(@profile, current_user)
    else
      flash[:notice] = 'Error.  Something went wrong.'
      render :new
    end
  end

  def edit          # GET /profiles/:id/edit
    @profile = Profile.find(current_user)
  end

  def update        # PATCH /profiles/:id
    @profile = Profile.find(current_user)
    @profile.update(profile_params)
    redirect_to user_profile_path(@profile, current_user)
  end

  def destroy       # DELETE /profiles/:id
    @profile = Profile.find(current_user)
    @profile.destroy
    # redirect
  end

private

def profile_params

  params.require(:profile).permit(:first_name, :last_name, :address, :city, :post_code, :phone_number, :sex, :birth_date )
end

end
