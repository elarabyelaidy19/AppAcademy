Rails.application.routes.draw do
  # get 'comments/index'
  # get 'comments/create'
  # get 'comments/destroy'
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

  resources :users, only: [:index, :create, :update, :destroy, :show] do 
     resources :artworks, only: [:index]
  end 
  

  resources :artworks, only: [:create, :update, :destroy, :show] do 
    member do 
      post :like, to: 'artworks#like', as: 'like' 
      post :unlike, to: 'artworks#unlike', as: 'unlike'
    end  

    collection do 
      patch :index_all
    end 
  end 
  resources :artwoek_shares, only: [:create, :destroy]

  resources :comments, only: [:index, :create, :destroy] do
    member do 
      post :like, to: 'comments#like', as: 'like'
      post :unlike, to: 'comments#like', as: 'unlike'
    end 
  end 
end
