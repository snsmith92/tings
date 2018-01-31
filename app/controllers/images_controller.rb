class ImagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @ad = Ad.find_by_id(params[:id])
    @ad.images.create(image_params.merge(user:current_user))
    redirect_to ad_path(@ad)
  end 

  private

  def image_params
    params.require(:image).permit(:caption)
  end 
end
