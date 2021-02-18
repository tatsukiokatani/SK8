Rails.application.routes.draw do
  get 'session/new'
  
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
