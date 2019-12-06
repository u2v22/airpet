Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show], controllers: {registrations: 'registrations'}

  resources :bookings
  resources :animals do
    resources :reviews, only: :create
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bookings, only: [] do
    member do
      patch '/accept', to: 'bookings#accept'
      patch '/decline', to: 'bookings#decline'
    end
  end
end
