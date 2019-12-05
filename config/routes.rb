Rails.application.routes.draw do
  devise_for :users
  resources :bookings
  root to: 'pages#home'
  resources :animals
  resources :users, only: [:show], controllers: {registrations: 'registrations'}
  resources :bookings, only: [] do
    member do
      patch '/accept', to: 'bookings#accept'
      patch '/decline', to: 'bookings#decline'
    end
  end
end
