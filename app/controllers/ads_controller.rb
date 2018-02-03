class AdsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]  
  def index
    @ads = Ad.paginate(:page => params[:page], :per_page => 10)
  end 

  def new
    @ad = Ad.new
  end 

  def create
    @ad = current_user.ads.create(ad_params)
    if @ad.valid?
      redirect_to ad_path(@ad)
    else
      render :new, status: :unprocessable_entity
    end 
  end 

  def show
    @ad = Ad.find_by_id(params[:id])
    if @ad.blank?
      render plain: "Sorry folks -- no ad to see here!", status: :not_found
    end 
  end

  private

  def ad_params
    params.require(:ad).permit(:title, :cost, :description, :quantity, :phone, :email, :accepted)
  end 
end
