class RentsController < ApplicationController


  def index         # GET /rents
    @rents = Rent.all
  end

  def show          # GET /rents/:id
    @rent = Rent.find(params[:id])
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @rent = Rent.new          # GET /rents/new
  end

  def create        # POST /rents
    if user_signed_in? || current_user.profile.present?
      @profile = current_user.profile
      @flat = Flat.find(params[:flat_id])
      @rent = Rent.new(rent_params)
      @rent.flat = @flat
      @rent.profile = @profile
        if @rent.save
          redirect_to profile_path(@profile)
          flash[:notice] = 'Booking was successfully created.'
        else
          redirect_to new_profile_path
          flash[:alert] = 'Please create a profile before booking.'
        end
    else
      redirect_to new_profile_path
      flash[:alert] = 'Please create a profile before booking.'
    end
  end

  def edit          # GET /rents/:id/edit
    @rent = Rent.find(params[:id])
  end

  def update        # PATCH /rents/:id
    @rent = Rent.find(params[:id])
    @rent.update(rent_params)
    redirect_to flat_path(@flat)
  end

  def destroy       # DELETE /rents/:id
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to rents_path
  end

private

  def rent_params
    params.require(:rent).permit(:number_of_people, :check_in_date, :check_out_date)
  # To be updated
  # params.require(:rent).permit(:name, :description, :photo, :photo_cache)
  end

end
