require 'sidekiq/web'

Rails.application.routes.draw do
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
  # Defines the root path route ("/")
  # root "articles#index"
  post "hello", to: 'pages#hello'
end
