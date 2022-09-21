Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index" 

  resources :cats do 
    resources :toys, only: [:index, :new] 
  end 

  resources :toys, only: [:create, :show, :update, :destroy] 

  root to: redirect("/cats")
end
