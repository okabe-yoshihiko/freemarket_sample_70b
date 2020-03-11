Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :show, :new]do
    collection do
      get 'confirm', to: 'items#confirm'
      post 'pay', to: 'items#pay'
      get 'done', to: 'itemsdone'
    end
  end
  resources :users
  resources :cards, only: [:new, :create, :show] do
    collection do
      post 'create', to: 'cards#create'
      post 'delete', to: 'cards#delete'
    end
  end
end
