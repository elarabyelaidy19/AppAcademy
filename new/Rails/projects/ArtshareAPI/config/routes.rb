Rails.application.routes.draw do
  # get 'artwoek_shares/create'
  # get 'artwoek_shares/destroy'
  # get 'artworks/index'
  # get 'artworks/create'
  # get 'artworks/destroy'
  # get 'artworks/show'
  # get 'artworks/update'
  # get 'users/', to: 'users#index'
  # get 'user/show'
  # get 'user/create'
  # get 'user/destroy'
  # get 'user/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" 

  resources :users, only: [:index, :create, :update, :destroy, :show] 
  resources :artworks, only: [:create, :update, :destroy, :show]
  resources :artwoek_shares, only: [:create, :destroy]


  resources :users do
    resources :artworks, only: [:index]
  end
end
