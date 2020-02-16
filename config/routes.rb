Rails.application.routes.draw do
  resources :divisions
  resources :events
  get '/signup', to: 'users#new'
  
  resources :users, except: [:new, :index]
  resources :tournaments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end