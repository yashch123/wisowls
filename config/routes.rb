Rails.application.routes.draw do
  resources :dogs
  root 'pages#home'
  get 'sessions/new'
  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get 'users/dogprofile'
  get 'users/dashboard'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post   '/users/dogprofile', to: 'dogprofile#update'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
