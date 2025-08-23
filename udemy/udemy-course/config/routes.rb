Rails.application.routes.draw do
  resources :pages
  resources :users
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  # get "up" => "rails/health#show", as: :rails_health_check
end
