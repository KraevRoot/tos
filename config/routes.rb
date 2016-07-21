Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new', as: 'login'
    get 'signup', to: 'devise/registration#new', as: 'signup'
    get 'logout', to: 'devise/sessions#destroy', as: 'logout'
  end
  ## get 'signup', to: 'users#new', as: 'signup'
  ## get 'login', to: 'sessions#new', as: 'login'
  ## get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :stories

  root 'stories#index'
end
