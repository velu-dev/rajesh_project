Rails.application.routes.draw do
  get 'sessions/login'
  get 'sessions/logout'
  get 'sessions/home'
  post 'sessions/login_attempt'
  resources :users
  resources :roles
  root "sessions#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
