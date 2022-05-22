Rails.application.routes.draw do
  get 'courses/', to: 'courses#index'
  get 'courses/new'

  get 'courses/:id', to: 'courses#show', as: 'show_course'
  get 'courses/:id/edit', to: 'courses#edit', as: 'edit_course'

  post 'courses', to: 'courses#create'
  patch 'courses/:id', to: 'courses#update', as: 'course'
  delete 'courses/:id', to: 'courses#destroy', as: 'course_delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
