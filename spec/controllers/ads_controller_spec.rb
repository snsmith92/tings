require 'rails_helper'

RSpec.describe AdsController, type: :controller do 
  describe "ads#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end 
  end

  describe "ads#new action" do
    it "should successfully show the post new ad form" do
      user = User.create(
        email:                  'fakeuser@gmail.com',
        password:               'secretPassword',
        password_confirmation:  'secretPassword'
      )
      sign_in user
      
      get :new
      expect(response).to have_http_status(:success)
    end 
  end 
  
end