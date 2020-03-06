Rails.application.routes.draw do
  root "items#show"
  resources :items, only: [:index, :show ]
end
