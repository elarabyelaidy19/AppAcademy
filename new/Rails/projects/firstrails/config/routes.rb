Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" 

  # resources :users
  get 'users/:id', to: 'users#show', as: 'user' 
  get 'users/new', to: 'users#new', as: 'new_user'
  post 'users/', to: 'users#create', as: 'create_user'  
  get 'users/', to: 'users#index', as: 'users'
  patch 'users/:id', to: 'users#update', as: 'update_user' 
  delete 'users/:id', to: 'users#destroy', as: 'delete_user' 

end


