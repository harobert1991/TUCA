Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes/show'

  get 'categories/index'

  get 'categories/show'

  devise_for :users
  root to: 'pages#home'

  resources :category, only: [:index]
  resources :recipe, only: [:index, :show]
end
