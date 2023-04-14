Rails.application.routes.draw do
  get 'splash_screen/index'
  devise_for :users
  root "entity#index"

  resources :entity, only: [:index, :show, :new, :create]
  resources :group, only: [:new, :create]
end
