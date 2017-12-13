Rails.application.routes.draw do

  devise_for :users
  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show] do
    resources :carts
  end
  resources :carts, only: [:show]
  resources :line_items, only: [:create]
  resources :orders, only: [:show]
  authenticated :user do
    root to: 'store#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

end
