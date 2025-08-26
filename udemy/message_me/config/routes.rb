Rails.application.routes.draw do
  resources :sessions
  resources :chatrooms
  resources :users
  resources :messages
  root to: "chatrooms#index"
  get "login" => "sessions#new"
end
