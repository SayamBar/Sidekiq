require 'sidekiq/web'

Rails.application.routes.draw do
  resources :posts
  root 'posts#index'
  get "published", to:"posts#published"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
  # Defines the root path route ("/")
  # root "articles#index"
  get "/pages", to: 'pages#home'
  post "hello", to: 'pages#hello'
end
