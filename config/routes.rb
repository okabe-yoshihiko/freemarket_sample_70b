Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    get 'profiles', to: 'users/registrations#new_profile'
  end

  root to: 'items#index'
  resources :items do
    collection do
      post 'pay/:id', to: 'items#pay'
      get 'done/:id', to: 'items#done'
      get 'fail/:id', to: 'items#fail'
      get 'category_children' 
      get 'category_grandchildren'
      get 'search'
    end
    member do
      get 'confirm', to: 'items#confirm'
    end
  end

  resources :users
  resources :cards, only: [:new, :create, :show] do
    collection do
      post 'delete', to: 'cards#delete'
    end
  end
end
