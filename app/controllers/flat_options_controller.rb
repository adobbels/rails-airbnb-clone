class FlatOptionsController < ApplicationController
  def index
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @flat_option = FlatOption.new
  end

  def create
    @feature = Feature.new
    @flat = Flat.find(params[:flat_id])
    @flat_option = FlatOption.new(flat_option_params)
    @flat_option.flat = @flat
    @flat_option.feature = @feature
    if @flat_option.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  private
  def flat_option_params
    params.require(:flat_option).permit(:television, :pet, :bed, :wifi, :user, :document)
  end

end
