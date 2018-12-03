Rails.application.routes.draw do
  devise_for :users

  root controller: :forums, action: :index
end
