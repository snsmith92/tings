Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :ads
  resources :categories
  resources :users, only: :show 
  resources :favourite_ads, only: [:create, :destroy]
  get '/favourites', to: 'favourite_ads#index', as: 'favourites'
end
