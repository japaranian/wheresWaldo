Rails.application.routes.draw do

  root 'session#new'
  post '/session/create' => 'session#create'
  delete '/session/destroy' => 'session#destroy'

  get '/users/new' => 'users#new'
  post '/users/create' => 'users#create'
  get '/users/:id' => 'users#view'

  get '/match' => 'match#new'
  get '/match/easy' => 'match#easy'
  get '/match/intermediate' => 'match#intermediate'
  get '/match/difficult' => 'match#difficult'

end
