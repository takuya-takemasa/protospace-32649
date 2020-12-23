Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
    #resourcesを用いて、上記で設定したnewアクションとcreateアクションに対するルーティングをroutes.rbに記述した
  end
  resources :users, only: :show
end

