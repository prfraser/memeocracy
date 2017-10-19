Rails.application.routes.draw do
  resources :products
  devise_for :sellers
  root 'pages#home'

  get 'pages/about'
  get 'pages/contact', to: 'pages#contact'
  post 'pages/contact', to: 'pages#submit'
  get 'pages/submit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
