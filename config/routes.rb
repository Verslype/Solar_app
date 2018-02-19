Rails.application.routes.draw do

  resources :customers

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  root 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
