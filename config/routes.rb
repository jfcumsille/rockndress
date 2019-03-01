Rails.application.routes.draw do
  root 'pages#index'
  get '/how', to: 'pages#how'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
