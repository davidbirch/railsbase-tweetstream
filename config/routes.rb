Rails.application.routes.draw do
   
  # the home page
  root 'pages#home'
  
  # static routes
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tag_summary/:name', to: 'tag_summary#show'

  
  # auth routes
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'sessions#failure'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'signin', to: 'sessions#new', as: 'signin'
  
  
  # full resource routes
  resources :tags
  resources :keywords
  resources :filters
  resources :twitter_users
  resources :tweets
  resources :groups
  resources :teams
  resources :categories
  
  namespace :api do
    namespace :v1 do
      resources :raw_tweets, only: [:index, :show]
    end
  end
  
end
