Rails.application.routes.draw do
  get 'topics/new'
  get 'session/new'
  
  root 'pages#index'
  get 'pages/help'
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  
  resources :users
  resources :topics
end
