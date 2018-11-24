Rails.application.routes.draw do

  resource :session

  get 'singin', to: 'sessions#new'

  get 'signup', to: 'users#new'

  resources :users
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
