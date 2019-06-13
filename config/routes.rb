Rails.application.routes.draw do

  devise_for :users
  root to: 'happies#index'
  resources :happies do
    resources :comments
    resources :likes, only: [:create, :destroy]
  end
  resources :users
end
