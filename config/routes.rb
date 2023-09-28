Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      # Get reservations for a user
      get 'users/:user_id/reservations', to: 'reservations#user_reservations'
      get 'users/:user_id/items', to: 'reservations#user_items'
      
      resources :items
      resources :users
      resources :reservations
    end
  end
end
