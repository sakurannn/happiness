Rails.application.routes.draw do

  devise_for :users
  root to: 'happies#index'
  resources :items do
    resources :likes, only: [:create, :destroy]
  end
  resources :users
end
