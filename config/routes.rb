Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies do
    resources :actor, only: [:index]
  end
  resources :genre
  resources :actor
  resources :casts
end
