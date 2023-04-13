Rails.application.routes.draw do
  get 'group/new'
  get 'group/create'
  get 'entity/index'
  get 'entity/show'
  get 'entity/new'
  get 'entity/create'
  devise_for :users
  root "entity#index"

  resources :entity
end
