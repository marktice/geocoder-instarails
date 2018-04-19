Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/gmaps', to: 'pages#gmaps'
  get 'pages/directions', to: 'pages#directions'
  get 'pages/geolocation', to: 'pages#geolocation'
  get 'pages/ruegen', to: 'pages#ruegen'  


  devise_for :users

  get   '/profile',       to: 'profiles#show'
  post  '/profile',       to: 'profiles#create'
  get   '/profile/edit',  to: 'profiles#edit'
  patch '/profile',       to: 'profiles#update'
end