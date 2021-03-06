Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  # This Rails syntax creates two named paths:
  # help_path -> '/help'
  # help_url  -> 'http://www.example.com/help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  resources :users
end
