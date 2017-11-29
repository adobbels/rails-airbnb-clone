class FeaturesController < ApplicationController
  def new
  @flat = Flat.find(params[:flat_id])
  @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)
    @flat = Flat.find(params[:flat_id])
    @feature.flat = @flat
    if @feature.save
      redirect_to flat_path(params[:flat_id])
    else
      render :new
    end
  end

  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    redirect_to flats_path
  end

   private

  def feature_params
    params.require(:feature).permit(:name, :fontawesome_logo)
  end
end

end
