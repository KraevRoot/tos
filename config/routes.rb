Rails.application.routes.draw do


  resources :users
  resources :sessions
  resources :stories

  root 'stories#index'
end
