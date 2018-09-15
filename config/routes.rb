Rails.application.routes.draw do
  resources :bars
  devise_for :users
  root "welcome#index"
end
