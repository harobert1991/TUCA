Rails.application.routes.draw do

  get "dashboard", to: "pages#dashboard"
  get "search", to: "recipes#search"
  devise_for :users
  root to: 'categories#index'

  resources :categories, only: [:index]
  resources :recipes, only: [:index, :show] do
    resources :steps, only: [:index]
    resources :carts, only: [:create, :new]
  end
  resources :user_ingredients, only: [] do
    get "found", to: "user_ingredients#found"
  end
  resources :carts, only: [:index, :destroy]

end

