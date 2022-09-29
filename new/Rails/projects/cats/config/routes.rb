Rails.application.routes.draw do
  # get 'cats/index'
  # get 'cats/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :cats
end
