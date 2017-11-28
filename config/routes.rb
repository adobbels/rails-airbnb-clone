Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :flats do
    resources :reviews, only: [:new, :create ]
    resources :rents
  end

  root to: 'pages#home'
end


# probleme avec les routes de profile et user
# https://stackoverflow.com/questions/1298846/associating-two-models-in-rails-user-and-profile
