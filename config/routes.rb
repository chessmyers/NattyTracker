Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  root to: "sessions#welcome"

  resources :users, only: [:new, :create]
  get 'profile', to: 'users#show'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  post 'logout', to: 'sessions#logout'

  get 'welcome', to: 'sessions#welcome'

  get 'homepage', to: 'homepage#index'

  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
