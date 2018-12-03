Rails.application.routes.draw do
  devise_for :users

  root controller: :forums, action: :index
  resources :forums, only: [:index, :show, :update]
end
