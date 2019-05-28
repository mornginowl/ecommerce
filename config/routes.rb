Rails.application.routes.draw do
  root 'storefronts#all_items'
  get 'categorical' => 'storefronts#items_by_category'
  get 'branding' => 'storefronts#item_by_brand'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
