Rails.application.routes.draw do
  root to: 'devise/registrations#new' #TODO: change after chinczyk initialization
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
