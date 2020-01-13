Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'pages/home'
  get 'pages/contact'

  # get 'bijous/index'
  # get 'bijous/show'

  get 'bijous/bagues'
  get 'bijous/broches'
  get 'bijous/boucles'
  get 'bijous/colliers'
  get 'bijous/tagged'


  resources :bijous
  get '/tagged', to: "bijous#index", as: :tagged

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end


  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
