Rails.application.routes.draw do
  resources :users
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]
  get "singup", to: "users#new"
  # get "up" => "rails/health#show", as: :rails_health_check
end
