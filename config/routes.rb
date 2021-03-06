# frozen_string_literal: true

Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  resources :entries, path: 'history'
  get 'home/landing'
  devise_for :users
  root to: 'home#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
