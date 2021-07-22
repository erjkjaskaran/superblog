Rails.application.routes.draw do
  resources :search_suggestions
  resources :friends,:posts, :comments, :messages
  resources :profiles, except: [:show]
  resources :users, except: [:new]
  get 'home/index'
  get 'user/profile', to: 'profiles#show'
  get 'search', to: 'posts#index'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'user/posts', to: 'posts#user'
  get 'sign_up', to: 'users#new'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
