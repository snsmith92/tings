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
      post :create, params: { ad: FactoryBot.attributes_for(:ad) }
      expect(response).to redirect_to new_user_session_path
    end 

    it "should successfully create new ad in database" do 
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { ad: FactoryBot.attributes_for(:ad) }
      expect(response).to redirect_to(Ad.last)
    end

    it "should properly deal with validation errors" do
      user = FactoryBot.create(:user)
      sign_in user
      post :create, params: { ad: {
        title: "",
        cost: "",
        description: "",
        quantity: "",
        phone: "",
        email: "",
        accepted: nil  } }

      expect(response).to have_http_status(:unprocessable_entity)
      expect(Ad.count).to eq 0
    end 
  end
  
  describe "ads#show action" do
    it "should successfully show the page if the ad is found" do
      ad = FactoryBot.create(:ad)
      get :show, params: { id: ad.id }
      expect(response).to have_http_status(:success)
    end 

    it "should return 404 error if the gram is not found" do 
      get :show, params: { id: "fakeid"}
      expect(response).to have_http_status(:not_found)
    end 

  end 
  
end