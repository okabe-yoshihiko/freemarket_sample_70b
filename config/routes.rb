Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :show, :confirm ]
  resources :users
  resources :cards, only: [:new, :create, :show] do
    collection do
      post 'create', to: 'cards#create'
      post 'delete', to: 'cards#delete'
    end
  end
end
