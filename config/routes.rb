Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: "homepage#index"

  resources :users, only: [:new, :create]
  get 'profile', to: 'users#show'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'welcome', to: 'sessions#welcome'

  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
