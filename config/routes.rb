Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/home'
  get 'pages/login'
  get 'pages/profile'
  get  '/signup',  to: 'users#new'
  resources :users
end
