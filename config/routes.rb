Rails.application.routes.draw do
  resources :friends,:posts
  get 'home/index'
  get 'users/sign_in'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
