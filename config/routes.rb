Rails.application.routes.draw do
  root 'users#new'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create' 

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/welcome' => 'welcome#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
