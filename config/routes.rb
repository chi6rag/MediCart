Rails.application.routes.draw do
  resources :orders

  resources :order_items

  resources :products

  match 'auth/:provider/callback', to: 'sessions#create', via: :get

  root 'products#index'
end
