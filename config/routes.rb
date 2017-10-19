Rails.application.routes.draw do
  devise_for :buyers
  resources :products
  devise_for :sellers
  root 'pages#home'
  get 'pages/about'
  get 'pages/submit'
  get 'bag/index'
  get 'pages/contact', to: 'pages#contact'
  post 'pages/contact', to: 'pages#submit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
