Rails.application.routes.draw do
  resources :homepage, only: [:index]

  root 'homepage#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'


  get '/posts/search', to: 'posts#index'
  post '/pots', to: 'posts#create'

  get 'rooms/show'

  resources :skills
  resources :apprenticeships do
    resources :messages
  end
  resources :users, except: [:index]

  mount ActionCable.server => '/cable'
end
