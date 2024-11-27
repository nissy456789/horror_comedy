# frozen_string_literal: true

Rails.application.routes.draw do
  get 'horror_comedys/top'
  # 環境構築の検証用
  resources :tasks
  root 'horror_comedys#top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  resources :movies, only: %i[index] 
  # Defines the root path route ("/")
  # root "posts#index"
end
