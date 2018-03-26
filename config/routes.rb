Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :category, only: [:index]
  resources :recipe, only: [:index, :show]
end
