Rails.application.routes.draw do
  get 'sessions/new'
  get 'pages/about'
  get 'pages/home'
  get 'pages/login'
  get 'pages/profile'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
