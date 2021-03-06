Rails.application.routes.draw do

  get "dashboard", to: "pages#dashboard"
  get "search", to: "recipes#search"
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'categories#index'

  resources :favorites, only: [:destroy]
  resources :categories, only: [:index]
  resources :recipes, only: [:index, :show] do
    resources :favorites, only: [:new, :create]
    resources :steps, only: [:index]
    resources :carts, only: [:create, :new]
  end
  resources :user_ingredients, only: [] do
    get "found", to: "user_ingredients#found"
  end
  resources :carts, only: [:index, :destroy] do
    collection do
      delete 'destroy_all'
    end
  end

end

