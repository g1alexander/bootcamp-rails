Rails.application.routes.draw do
  get 'courses/', to: 'courses#index'
  get 'courses/new'

  post 'courses', to: 'courses#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
