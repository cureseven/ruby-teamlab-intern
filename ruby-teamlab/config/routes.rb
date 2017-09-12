Rails.application.routes.draw do
  resources :product, only: [:edit]
#  resources :product_picture

  get 'product/view', to: 'product#view'


  end
