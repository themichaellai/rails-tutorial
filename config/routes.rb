Rails.application.routes.draw do
  root 'submissions#index'
  get 'comments/create'

  resources :submissions do
    post :vote
    resources :comments, only: [:create]
  end
end
