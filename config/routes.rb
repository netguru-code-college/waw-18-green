Rails.application.routes.draw do
  resources :bars do
    resources :comments
  end
  devise_for :users
  get "users/:id" => "users#show", as: "user"
  resources :images, only: [:new, :create, :show]
  root "bars#index"
end
