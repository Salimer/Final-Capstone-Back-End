Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Get reservations for a user
      get 'users/:user_id/reservations', to: 'reservations#user_reservations'
      
      resources :items
      resources :users
      resources :reservations
    end
  end
end
