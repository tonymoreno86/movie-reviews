Rails.application.routes.draw do

  root 'movies#index'
  
  # get 'movies', to: 'movies#index'
  # get 'movies/new', to: 'movies#new'
  # get 'movies/:id', to: 'movies#show', as: 'movie'
  # get 'movies/:id/edit', to: 'movies#edit', as: 'edit_movie'
  # patch 'movies/:id', to: 'movies#update'

  resources :movies do
    resources :reviews
  end
end
