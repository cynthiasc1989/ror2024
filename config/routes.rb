Rails.application.routes.draw do
  get 'documentary_film/index'
  get 'documentary_film/new'
  get 'documentary_film/create'
  get 'series/index'
  get 'series/new'
  get 'series/create'
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "movies" => "movies#create"
  post "series" => "series#create"
  post "documentary_film" => "movies#create"

  # Defines the root path route ("/")
  root "movies#index"
end
