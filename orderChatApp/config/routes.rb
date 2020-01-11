Rails.application.routes.draw do
  devise_for :users
  root 'rooms/show'

  resources :rooms, only: %i[show]
end
