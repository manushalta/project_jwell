Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/index' =>  'homes#index'
  get 'homes/about' =>  'homes#about'
  get 'homes/cart' => 'homes#cart'
  devise_for :users
end
