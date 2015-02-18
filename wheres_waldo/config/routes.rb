Rails.application.routes.draw do

  root 'session#new'
  post '/session/create' => 'session#create'
  delete '/session/destroy' => 'session#destroy'

  get '/users/new' => 'users#new'
  post '/users/create' => 'users#create'
  get '/users/:id' => 'users#view'

  get '/users/:id/match' => 'match#new'
  post '/match/new' => 'match#create'
end
