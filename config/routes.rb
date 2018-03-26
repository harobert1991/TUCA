Rails.application.routes.draw do
  devise_for :users
  root to: 'category#index'

  resources :category, only: [:index]
  resources :recipe, only: [:index, :show]
end
