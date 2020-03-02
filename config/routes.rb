Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/about', to: 'static_pages#about'
end
