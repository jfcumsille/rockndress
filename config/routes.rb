Rails.application.routes.draw do
  root 'pages#index'
  get '/how', to: 'pages#how'
  resources :users do
    get '/confirmation', to: 'users#confirmation'
  end

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
