Rails.application.routes.draw do
  resources :bars
  devise_for :users
  get "users/:id" => "users#show", as: "user"
  resources :images, only: [:new, :create, :show]
  root "bars#index"
end
