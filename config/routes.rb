Rails.application.routes.draw do
  resources :submissions, only: [:index, :show]
end
