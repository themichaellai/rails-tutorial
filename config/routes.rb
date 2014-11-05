Rails.application.routes.draw do
  get 'comments/create'

  resources :submissions do
    resources :comments, only: [:create]
  end
end
