Rails.application.routes.draw do
  devise_for :users
  root to: "bijous#index"

  get 'pages/home'
  get 'pages/contact'

  # get 'bijous/index'
  # get 'bijous/show'
  # get 'bijous/bagues'
  # get 'bijous/broches'
  # get 'bijous/boucles'
  # get 'bijous/colliers'

  resources :bijous, only: [:index, :show, :bagues, :broches, :boucles, :colliers, :create]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  # mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
