Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index", as: "home"
  get 'users/index', to:"users#index"
  get 'users/ownpage', to: 'users#ownpage', as: "ownpage"
  get 'posts/create', to:"posts#create"
  get 'posts/new', to: "posts#new", as: "posts_new"
  get 'posts/destroy', to: "posts#destroy", as: "posts_destroy"
  post 'boards/show/:id', to:"posts#create"
  get 'boards/new', to: 'boards#new', as: 'boards_new'
  #get '/boards/create', to:"boards#create"
  get 'users/ownpage/:id', to:"users#ownpage"
  get 'posts/index', to: "posts#index", as: 'posts_index'
  get 'boards/index', to: "boards#index", as: 'boards_index'
  get 'boards/show/:id', to: 'boards#show', as: 'boards_show'
  get 'posts/show/:id', to: 'posts#show', as: 'posts_show'
  patch 'boards/create', to: 'boards#index'
  post 'boards/index', to: 'boards#create'
  patch 'posts/like', to: 'posts#like', as: 'like_post'
  patch 'posts/unlike', to: 'posts#unlike', as: 'unlike_post'
  patch 'boards/show', to: 'boards#subscribe', as: 'board_subscribe'
  patch 'boards/show', to: 'boards#unsubscribe', as: 'board_unsubscribe'


end
