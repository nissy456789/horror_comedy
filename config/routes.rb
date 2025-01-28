# frozen_string_literal: true

Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  post 'logout', to: 'sessions#destroy', as: 'logout'
  devise_for :users
  #ログアウト用ルーティングです。turbo_methodがうまく機能しないため設定しました。
  # Google認証のコントローラー作成gemインストールしました。(仮)

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'horror_comedys/top'
  # 環境構築の検証用
  resources :tasks
  #トップページ設定用
  root 'horror_comedys#top'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  resources :movies, only: %i[index show]  do
    resources :reviews, only: %i[create edit update destroy]
    collection do
      get :bookmark#ブックマークを一覧を表示
    end 
  end

  resources :bookmarks, only: [:create, :index]
  delete 'unbookmark', to: 'bookmarks#destroy', as: 'unbookmark_movie'

  resources :watcheds, only: [:create, :destroy] do
    collection do
      get 'ranking'
    end
  end
    

  resources :recommends, only: [:index] 

  resources :privacypolicys, only: %i[index]
  
  resources :users, only: [:show] do
    resources :reviews, only: %i[index]
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
