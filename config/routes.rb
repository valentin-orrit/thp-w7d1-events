Rails.application.routes.draw do
  # get 'user/show'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "event#index"

  resources :user, only:[ :create, :new]
  resources :attendance, only:[ :new, :create, :show, :index, :edit, :destroy]
  resources :event, only:[ :new, :create, :show, :index, :edit, :destroy]

end
