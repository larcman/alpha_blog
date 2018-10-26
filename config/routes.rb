Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  
  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]  # Option 1: Skip new action as it is defined above
  post 'users', to: 'users#create'   # Option 2
end
