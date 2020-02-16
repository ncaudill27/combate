Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  
  resources :users, except: [:new, :index]
  resources :tournaments do
    resources :events, only: [:new, :create]
    resources :divisions, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#welcome'
end
