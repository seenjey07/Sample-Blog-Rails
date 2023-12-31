Rails.application.routes.draw do
  resources :homepages
  resources :articles
  resources :posts
  # resources :albums
  resources :homepages


  get '/albums' => 'albums#index' 
  get '/albums/new' => 'albums#new', as: 'new_album'
  post '/albums' => 'albums#create', as: 'create_album' 
  get '/albums/:id/album' => 'albums#show', as: 'current_album'
  get '/albums/:id/edit' => 'albums#edit', as: 'edit_album'
  patch '/albums/:id' => 'albums#update', as: 'update_album'
  delete '/albums/:id/delete' => 'albums#destroy', as: 'delete_album'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'homepages#index'


end
