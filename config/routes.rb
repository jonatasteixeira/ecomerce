Rails.application.routes.draw do
#  resources :carts
  resources :items
  
  get     '/logout'                         => 'sessions#destroy'
  post    '/login'                          => 'sessions#create'
  get     '/login'                          => 'sessions#new'
  get     '/signup'                         => 'users#new'
  get     '/users'                          => 'users#index'
  post    '/users'                          => 'users#create'
  post    '/users/update'                   => 'users#update'
  delete  '/users/:id'                      => 'users#destroy'
  
  
  get     '/carts'                           => 'carts#index'
  delete  '/cart'                            => 'carts#remove'
  post    '/buy'                             => 'carts#add'  
  delete  '/cart/close'                      => 'carts#close'
  
  root "items#index"
end
