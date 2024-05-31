Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resources :artists, only: [:index,:show] 
resources :albums, only: [:index,:show]
resources :singles, only: [:index,:show]

end
