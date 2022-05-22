Rails.application.routes.draw do
  get 'courses/', to: 'courses#index'
  get 'courses/new'

  get 'courses/:id', to: 'courses#show', as: 'show_course'
  get 'courses/:id/edit', to: 'courses#edit', as: 'edit_course'

  post 'courses', to: 'courses#create'
  patch 'courses/:id', to: 'courses#update', as: 'course'
  delete 'courses/:id', to: 'courses#destroy', as: 'course_delete'

  #------------
  get 'videos', to: 'videos#index'
  get 'videos/new'

  get 'videos/:id', to: 'videos#show', as: 'show_video'
  get 'videos/:id/edit', to: 'videos#edit', as: 'edit_video'

  post 'videos', to: 'videos#create'
  patch 'videos/:id', to: 'videos#update', as: 'video'
  delete 'videos/:id', to: 'videos#destroy', as: 'video_delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
