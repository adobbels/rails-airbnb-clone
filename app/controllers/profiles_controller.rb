class ProfilesController < ApplicationController

  def index         # GET /profiles
  end

  def show          # GET /profiles/:id
  end

  def new           # GET /profiles/new
  end

  def create        # POST /profiles
  end

  def edit          # GET /profiles/:id/edit
  end

  def update        # PATCH /profiles/:id
  end

  def destroy       # DELETE /profiles/:id
  end

private

def profile_params
  # To be updated
  # params.require(:profile).permit(:name, :description, :photo, :photo_cache)
end

end
