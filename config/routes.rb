Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :ads do
    resources :images, only: [:create, :new]
  end 
end
