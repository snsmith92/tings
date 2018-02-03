Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :ads, only: [:index, :new, :create]
  resources :categories do
    resources :ads, only: [:show]
  end 
end
