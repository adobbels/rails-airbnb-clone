Rails.application.routes.draw do

  devise_for :users
  resources :users do
    resources :profiles
  end
  resources :flats do
    resources :reviews, only: [:new, :create ]
    resources :rents
  end
  resources :flat_options

  root to: 'pages#home'
end
