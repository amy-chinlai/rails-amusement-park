Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :attractions
  resources :rides
  # resources :users, only: [:new, :create, :show, :delete]
  get 'signin', to: 'users#signin'
  post 'login', to: 'users#login'
  root to: "users#new"
end
