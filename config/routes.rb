Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/:user_id/bookmarks', to: 'events#index', as: 'bookmarks'
  resources :users, except: [:new, :index] do
    resources :events, only: [:index]
  end
  resources :tournaments do
    resources :events, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  match '/auth/:provider/callback', to: 'sessions#auth_create', via: [:get, :post]

  root 'application#welcome'
end
