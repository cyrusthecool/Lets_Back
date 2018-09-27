Rails.application.routes.draw do

  post 'user_token' => 'user_token#create'
  # root :to => 'session#new'


  resources :users
  resources :interests
  resources :events
  resources :groups

  resources :enrollments
  resources :roles
  resources :comments


  # post 'user_token' => 'user_token#create'




end
