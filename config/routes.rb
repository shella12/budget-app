Rails.application.routes.draw do
  devise_for :users
  root "group#index"

  resources :entity, only: [:new, :create]
  resources :group, only: [:index, :show, :new, :create]
end
