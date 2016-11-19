Rails.application.routes.draw do
  resources :posts
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'news_feed#index'
end
