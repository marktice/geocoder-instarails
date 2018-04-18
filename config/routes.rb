Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/gmaps', to: 'pages#gmaps'
  get 'pages/directions', to: 'pages#directions'


  devise_for :users

  get   '/profile',       to: 'profiles#show'
  post  '/profile',       to: 'profiles#create'
  get   '/profile/edit',  to: 'profiles#edit'
  patch '/profile',       to: 'profiles#update'
end