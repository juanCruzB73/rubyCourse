Rails.application.routes.draw do
  resources :sessions
  resources :chatrooms
  resources :users
  resources :messages
  root to: "chatrooms#index"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
