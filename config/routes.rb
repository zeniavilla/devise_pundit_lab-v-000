Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show]
  resources :notes
  
  root 'notes#index'
end
