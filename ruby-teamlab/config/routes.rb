Rails.application.routes.draw do
  resources :product
  resources :product_picture

  get 'product/view'


  end
