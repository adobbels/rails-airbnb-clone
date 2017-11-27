class RentsController < ApplicationController


  def index         # GET /rents
  end

  def show          # GET /rents/:id
  end

  def new           # GET /rents/new
  end

  def create        # POST /rents
  end

  def edit          # GET /rents/:id/edit
  end

  def update        # PATCH /rents/:id
  end

  def destroy       # DELETE /rents/:id
  end

private

def rent_params
  # To be updated
  # params.require(:rent).permit(:name, :description, :photo, :photo_cache)
end

end
