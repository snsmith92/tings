require 'rails_helper'

RSpec.describe AdsController, type: :controller do 
  describe "ads#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end 
  end

  describe "ads#new action" do
    it "should require users to be logged in" do 
      get :new
      expect(response).to redirect_to new_user_session_path
    end 


    it "should successfully show the post new ad form" do
      user = FactoryBot.create(:user)
      sign_in user
      
      get :new
      expect(response).to have_http_status(:success)
    end 
  end 

  describe "ads#create action" do
    it "should require users to be logged in" do
      post :create, params: { ad: {
      title: "Car for sale",
      cost: "3000.00",
      description: "I have for sale a very clean great running 2006 Buick Lucerne for sale. 
      This vehicle is in great shape inside and out. All power, tinted windows, 
      and 3800 motor. No issues at all, clean title.",
      quantity: "1",
      phone: "2425350365",
      email: "factory@ruby.org",
      accepted: true  } }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should successfully create new ad in database" do 
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { ad: FactoryBot.attributes_for(:ad) }
      expect(response).to redirect_to(Ad.last)
    end

    it "should properly deal with validation errors" do

    end 
  end 
  
end