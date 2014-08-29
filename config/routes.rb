Rails.application.routes.draw do

  root to: 'links#index'
  match("/upvote", {via:[:get, :post], to: "links#upvote"})
  get 'signup', to: "users#new", as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :users
  resources :links

end
