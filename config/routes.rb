Rails.application.routes.draw do
  devise_for :users
  root "events#index"

  resources :events do
    # Вложенный ресурс комментов понадобится два экшена: create и destroy
    resources :comments, only: [:create, :destroy]
    resources :subscriptions, only: [:create, :destroy]
  end

  resources :events
  resources :users, only: [:show, :edit, :update]
end

