Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :show, :index, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  resources :favourites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
