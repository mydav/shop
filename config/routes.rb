Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products
  root 'store#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
