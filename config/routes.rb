Rails.application.routes.draw do
  devise_for :admins
  root to: "bijous#index"

  get 'pages/home'
  get 'pages/contact'

  get 'bijous/index'
  get 'bijous/show'
  get 'bijous/bagues'
  get 'bijous/broches'
  get 'bijous/boucles'
  get 'bijous/colliers'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
