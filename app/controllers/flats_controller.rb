class FlatsController < ApplicationController

  def index         # GET /flats
    @flats = Flat.all
  end

  def show          # GET /flats/:id
    @flat = Flat.find(params[:id])
  end

  def new           # GET /flats/new
    @flat = Flat.new
    @feature = Feature.new
    @features = Feature.all
  end

  def create        # POST /flats
    @profile = current_user.profile
    @flat = Flat.new(flat_params)
    @flat.profile = @profile
    if @flat.save
     redirect_to flat_path(@flat)
    else
     render :new
    end
  end

  def edit          # GET /flats/:id/edit
    @flat = Flat.find(params[:id])
  end

  def update        # PATCH /flats/:id
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy       # DELETE /flats/:id
    @flat = Flat.find(params[:id])
    @flat.destroy
  end

private

def flat_params
  params.require(:flat).permit(:name, :description, :category, :price, :capacity, :address, :post_code, :city, :photo, :photo_cache, :profile)
  # To be updated
  # params.require(:flat).permit(:name, :description, :photo, :photo_cache)
end
end
