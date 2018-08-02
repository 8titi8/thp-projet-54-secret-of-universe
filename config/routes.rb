Rails.application.routes.draw do
  root to: 'static_pages#home', as: :home
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  post 'delete', to: 'sessions#destroy'
  resources :users
end
