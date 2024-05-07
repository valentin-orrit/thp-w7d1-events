Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "event#index"

  # resources :user, only:[:create]
  resources :attendance, only:[ :new, :create, :show, :index, :edit, :destroy]
  resources :event, only:[:new, :create, :show, :index, :edit, :destroy]

end
