Rails.application.routes.draw do
  root "pages#home"
  
  get "pages/home"
  
  namespace :api do
    resources :users, only: [:index, :show, :create]
    resources :posts, only: [:index, :show, :create]
    resources :comments, only: [:index, :show, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end