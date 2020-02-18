Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets, only: [:index,:create,:destroy]
  resources :tags, only: [:index,:show]
  resources :users, only: [:index,:show]
  resources :relationships, only: [:create, :destroy]

  resources :tweets do
 	 resources :likes
  end
end
