Rails.application.routes.draw do
  get 'result/new'
  get 'users/new'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login',    to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  resources :users
  resources :results, only: [:new, :edit, :create, :destroy]
end
