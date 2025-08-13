Rails.application.routes.draw do
  resources :users
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  get "signup", to: "users#new"
  get "login", to: "session#new"
  post "login", to: "session#create"
  delete "logout", to: "session#destroy"
  # get "up" => "rails/health#show", as: :rails_health_check
end
