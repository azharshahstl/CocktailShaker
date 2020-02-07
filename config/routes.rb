Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'signup' => 'mixologists#new'
  post 'signup' => 'mixologists#create'
  
  
  resources :mixologists
  resources :cocktails

  end
