Rails.application.routes.draw do
  devise_for :users
  root 'submissions#index'
  get 'comments/create'

  resources :submissions do
    post :vote
    resources :comments, only: [:create]
  end
end
