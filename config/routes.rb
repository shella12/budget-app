# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'group#index'

  resources :entity, only: %i[new create]
  resources :group, only: %i[index show new create]
end
