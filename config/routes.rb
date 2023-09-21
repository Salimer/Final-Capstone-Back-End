Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      resources :items, only: [:index, :show, :create, :update, :destroy]
      resources :reservations, only: [:index, :show, :create]
    end
  end
end