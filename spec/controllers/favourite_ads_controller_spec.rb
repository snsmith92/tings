require 'rails_helper'

RSpec.describe FavouriteAdsController, type: :controller do
  describe "favourites#index action" do
    it "should successfully show the page if a user is signed in" do
      user = FactoryBot.create(:user)
      sign_in user 
      get :index
      expect(response).to have_http_status(:success)
    end 

    it "should redirect to log in page if no user is signed in" do
      get :index
      expect(response).to redirect_to new_user_session_path
    end 
  end 

  describe "favourite_ads#create action" do
    it "should require users to be logged in" do
      
    end 

    it "should create a new favourite in the database" do
      
    end 
  end 

  describe "favourite_ads#destroy action" do
    it "should require users to be logged in" do
      
    end 

    it "should delete the relevant favourite from the database" do
      
    end 
  end 

  
end
