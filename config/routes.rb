Rails.application.routes.draw do
  resources :dogs
  root 'pages#home'
  get 'sessions/new'
  get '/about', to: 'pages#about'
  get '/home', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get 'users/myprofile'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post   '/users/myprofile', to: 'myprofile#update'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
