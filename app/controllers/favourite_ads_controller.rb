class FavouriteAdsController < ApplicationController
  before_action :set_ad, only: [:create, :destroy]

  def index
    if user_signed_in?
      @ads = current_user.favourite_ads
    else
      redirect_to new_user_session_path
      flash[:alert] = 'You must sign in to view your favourites.'
    end 
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
