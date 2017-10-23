Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  devise_for :users
  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy', as: 'sign_out'
    get 'sign_in', to: 'devise/sessions#new', as: 'login'
  end

  resources :users
  resources :stories

  root 'static_pages#home'
end
