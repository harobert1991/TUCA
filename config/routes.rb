Rails.application.routes.draw do

  devise_for :users
  root to: 'categories#index'

  resources :categories, only: [:index]
  resources :recipes, only: [:index, :show] do
    resources :steps, only: [:index]
  end
end

