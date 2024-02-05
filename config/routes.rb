Rails.application.routes.draw do
  resources :books
  resources :searches
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "books#index"
end
