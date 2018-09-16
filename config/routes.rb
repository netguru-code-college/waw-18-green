Rails.application.routes.draw do
  resources :bars
  devise_for :users
  get "users/:id" => "users#show", as: "user"
  root "bars#index"
end
