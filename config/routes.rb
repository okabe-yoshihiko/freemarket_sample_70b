Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    get 'profiles', to: 'users/registrations#new_profile'
  end
  root to: 'items#index'
  resources :items, only: [:index, :show, :new, :edit, :update, :destroy]do
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
