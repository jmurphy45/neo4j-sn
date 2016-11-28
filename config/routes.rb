Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  resources :posts
  resources :comments
  resources :users
  resources :followers
  resources :likes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'news_feed#index'
end
