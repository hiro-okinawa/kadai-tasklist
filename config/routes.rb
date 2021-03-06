Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #sessions
  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'
  
  #tasks
  root to: 'tasks#index'
  resources :tasks
  
  #users
  get 'signup',to: 'users#new'
  post 'users',to: 'users#create'
  
  
end