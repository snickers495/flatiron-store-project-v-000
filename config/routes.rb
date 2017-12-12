Rails.application.routes.draw do

  devise_for :users
  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show] do
    resources :carts
  end
  resources :line_items, only: [:create]
  resources :orders, only: [:show]


end
