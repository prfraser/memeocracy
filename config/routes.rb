Rails.application.routes.draw do
	resources :bag
  devise_for :buyers
  resources :products
  post 'products/:id', to: 'bag#create'
  devise_for :sellers
  root 'pages#home'
  get 'pages/about'
  get 'pages/submit'
  get 'pages/contact', to: 'pages#contact'
  post 'pages/contact', to: 'pages#submit'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
