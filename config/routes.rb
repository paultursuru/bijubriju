Rails.application.routes.draw do
  devise_for :admins
  root to: "pages#home"

  get 'pages/home'
  get 'pages/contact'

  get 'bijous/index'
  get 'bijous/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
