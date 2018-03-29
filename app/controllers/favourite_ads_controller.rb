class FavouriteAdsController < ApplicationController
  before_action :set_ad, only: [:create, :destroy]

  def index
    @ads = current_user.favourite_ads
  end 

  def create
    if Favourite.create(favourited: @ad, user: current_user)
      flash[:notice] = 'Ad has been favourited'
    else 
      flash[:alert] = 'Something went wrong.'
    end 
  end 

  def destroy
    Favourite.where(favourited_id: @ad.id, user_id: current_user.id).first.destroy
    redirect_to root_path
  end 

  private

  def set_ad
    @ad = Ad.find(params[:ad_id] || params[:id])
  end 

end
