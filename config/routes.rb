Rails.application.routes.draw do
  get 'blogs/index'
  resources :users, only: [:new, :create, :edit, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
