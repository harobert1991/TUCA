Rails.application.routes.draw do
  get 'recipes/index'

  get 'recipes/show'

  get 'categories/index'

  get 'categories/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
