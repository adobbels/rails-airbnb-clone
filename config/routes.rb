Rails.application.routes.draw do
  devise_for :users
  resources :flats
  resources :profiles

  root to: 'flats#index'
end
