# frozen_string_literal: true

Rails.application.routes.draw do
  resources :effects
  get 'home/landing'
  devise_for :users
  root to: 'home#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
