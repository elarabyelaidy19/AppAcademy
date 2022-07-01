Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" 

  get 'silly', to: 'silly#fun'  
  post 'silly', to: 'silly#fun' 
  post 'silly/:thing', to: 'silly#thing' 

  get 'superheros', to: 'superheros#index' 
  get 'superheros/:id', to: 'superheros#show' 
  post 'superheros', to: 'superheros#create'
  get 'superheros/new', to: 'superheros#new'
  put 'superheros/:id', to: 'superheros#update'
  patch 'superheros/:id', to: 'superheros#update'
end
