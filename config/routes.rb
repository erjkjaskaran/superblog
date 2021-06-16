Rails.application.routes.draw do
  resources :friends,:posts, :comments
  resources :users, except: [:new]
  get 'home/index'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'sign_up', to: 'users#new'
  post 'lt/leantechnologies/:data', to: 'lt#leantechnologies'
  post 'lt/leantechnologies', to: 'lt#leantechnologies'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
