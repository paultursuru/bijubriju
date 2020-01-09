Rails.application.routes.draw do
  devise_for :users
  root to: "bijous#index"

  get 'pages/home'
  get 'pages/contact'

  # get 'bijous/index'
  # get 'bijous/show'
  resources :bijous, only: [:index, :show, :create]

  get 'bijous/bagues'
  get 'bijous/broches'
  get 'bijous/boucles'
  get 'bijous/colliers'


  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  # mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
