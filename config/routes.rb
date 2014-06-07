Rails.application.routes.draw do
 
  resources :tags

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#failure'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'signin', to: 'sessions#new', as: 'signin'
  namespace :api do
    namespace :v1 do
      resources :raw_tweets, only: [:index, :show]
    end
  end
  
  resources :keywords
  resources :filters
  resources :twitter_users
  resources :tweets
  resources :groups
  resources :teams
  resources :categories
  
end
