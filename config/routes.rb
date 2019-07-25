Rails.application.routes.draw do
 # get 'charges/create'
 # get 'charges/new'
  post 'add_to_cart' => 'carts#add_to_cart'
  get 'view_order' => 'carts#view_order'
  get 'checkout' => 'carts#checkout'

  devise_for :users
  root 'storefronts#all_items'
 # root 'products#index'
  get 'categorical' => 'storefronts#items_by_category'
  get 'branding' => 'storefronts#item_by_brand'
  post 'order_complete' => 'carts#order_complete'
  resources :products
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
