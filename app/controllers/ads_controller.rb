class AdsController < ApplicationController

  def index
    @ads = Ad.all
  end 

  def new
    @ad = Ad.new
  end 

  def create
    @ad = current_user.ads.create(ad_params)
    redirect_to ad_path(@ad)
  end 

  def show
    @ad = Ad.find(params[:id])
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :cost, :description, :quantity, :phone, :email, :accepted)
  end 
end
