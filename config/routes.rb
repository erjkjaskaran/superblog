Rails.application.routes.draw do
  resources :friends,:posts, :users, :comments
  get 'home/index'
  get 'users/sign_in'
  post 'lt/leantechnologies/:data', to: 'lt#leantechnologies'
  post 'lt/leantechnologies', to: 'lt#leantechnologies'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
