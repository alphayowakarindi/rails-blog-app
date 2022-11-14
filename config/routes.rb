Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'

  # posts
  get '/users/:user_id/posts', to: 'posts#index'
end
