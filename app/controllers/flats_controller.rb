class FlatsController < ApplicationController

  def index         # GET /flats
  end

  def show          # GET /flats/:id
  end

  def new           # GET /flats/new
  end

  def create        # POST /flats
  end

  def edit          # GET /flats/:id/edit
  end

  def update        # PATCH /flats/:id
  end

  def destroy       # DELETE /flats/:id
  end

private

def flat_params
  # To be updated
  # params.require(:flat).permit(:name, :description, :photo, :photo_cache)
end

end
