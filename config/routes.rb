Rails.application.routes.draw do

  resources :genres
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

  #get 'movies/filter/hits', to: 'movies#index', scope: 'hits'
  #get 'movies/filter/flops', to: 'movies#index', scope: 'flops'

  get 'movies/filter/:scope', to: 'movies#index', as: :filtered_movies

  resources :movies do
    resources :reviews
    resources :favorites
  end
end
