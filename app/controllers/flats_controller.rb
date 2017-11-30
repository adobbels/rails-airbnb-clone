class FlatsController < ApplicationController

  def index         # GET /flats
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show          # GET /flats/:id
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }

  end

  def new           # GET /flats/new
    @flat = Flat.new
  end

  def create
          # POST /flats
    @profile = current_user.profile
    @flat = Flat.new(flat_params)
    @flat.profile = @profile

    @feature =
    fail

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
end

end

