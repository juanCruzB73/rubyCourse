Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"
  resources :pages
  resources :users
  resources :categories
  resources :articles, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
