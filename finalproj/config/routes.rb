Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/users/index', to:"users#index" 
  get '/posts/create', to:"posts#create"
  post '/posts/create', to:"posts#create"
    get '/boards/create', to:"boards#create"
  post '/boards/create', to:"boards#create"
  get '/users/ownpage/:id', to:"users#ownpage"

  get 'posts/index', to: "posts#index"
  get 'boards/index', to: "boards#index"
end
