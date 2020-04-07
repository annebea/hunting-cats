Rails.application.routes.draw do
  get 'cats/index'
  get 'cats/view'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cats, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  namespace :owner do
    resources :cats, only: [:index, :new, :create]
    resources :bookings, only: [:index]
  end

  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end

end
