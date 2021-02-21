Rails.application.routes.draw do
  root to: "sessions#welcome"

  resources :users, only: [:new, :create]
  get 'profile', to: 'users#show'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  post 'logout', to: 'sessions#logout'

  get 'welcome', to: 'sessions#welcome'

  resources :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
