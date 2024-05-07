Rails.application.routes.draw do
  get 'user/show'
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "user#show"
  # resources :user, only:[:show, :create, :new]
end
