Rails.application.routes.draw do
  resources :bars
  devise_for :users
  resources :images, only: [:new, :create, :show]
  root "bars#index"
end
