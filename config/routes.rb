Rails.application.routes.draw do
  
  devise_for :users
  resources :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'products/index'

  get 'users/sign_up'

  get 'orders/show', to 'user/order'

  post 'static_pages/thank_you'

  post 'static_pages/order_confirmation'

  root 'static_pages#landing_page'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
