Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :flats do
    resources :reviews, only: [:new, :create ]
  end


  root to: 'flats#index'
end
