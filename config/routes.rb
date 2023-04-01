Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :tasks
    resources :users
    resources :categories
    resources :reminders
  end
  post '/login', to: 'sessions#create'
  post '/users', to: 'users#create'
  post '/reminders', to: 'reminders#create'
  get 'reminders', to: 'reminders#index'
  post 'categories', to: 'categories#create'
  post '/tasks', to: 'tasks#create'
  get '/tasks', to: 'tasks#index'
  post '/home/tasks', to: 'tasks#create_home'



end
