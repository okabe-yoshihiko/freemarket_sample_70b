Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  root to: 'items#index'

  resources :items, only: [:index, :show, :new]do
    collection do
      get 'confirm/:id', to: 'items#confirm'
      post 'pay/:id', to: 'items#pay'
      get 'done/:id', to: 'items#done'
      get 'category_children' 
      get 'category_grandchildren'
    end
  end

  resources :users
  resources :cards, only: [:new, :show] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
    end
  end
end
