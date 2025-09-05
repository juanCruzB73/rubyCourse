Rails.application.routes.draw do
  resources :sessions
  resources :chatrooms
  resources :users
  resources :messages
  resources :sessions, only: [] do
  collection do
      get :login
      post :create
      delete :logout
    end
  end
  root to: "chatrooms#index"
end
