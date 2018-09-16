Rails.application.routes.draw do
  resources :bars
  devise_for :users
  resources :images, only: [:new, :create, :show]
  root "welcome#index"
  root "bars#index"
end
