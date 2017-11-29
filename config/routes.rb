Rails.application.routes.draw do

  get 'flat_options/new'

  get 'flat_options/create'

  get 'flat_options/update'

  get 'flat_options/edit'

  get 'flat_options/destroy'

  get 'flat_options/show'

  get 'flat_options/index'

  devise_for :users
  resources :users do
    resources :profiles
  end
  resources :flats do
    resources :reviews, only: [:new, :create ]
    resources :rents
  end

  root to: 'pages#home'
end
