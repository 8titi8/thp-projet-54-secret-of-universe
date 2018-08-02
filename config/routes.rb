Rails.application.routes.draw do
  root to: 'static_pages#home', as: :home
  get 'secret', to: 'static_pages#secret', as: :secret
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout

  resources :users
end
