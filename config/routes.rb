Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#home'
  get '/signup' => 'mixologists#new'
  post '/signup' => 'mixologists#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/random' => 'cocktails#random'
  post '/random' => 'cocktails#random'
  get '/auth/facebook/callback' => 'sessions#create'

  resources :cocktails
  
  
  resources :mixologists do 
    resources :cocktails, only: [:index]
    end
  end
