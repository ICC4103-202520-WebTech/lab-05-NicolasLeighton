Rails.application.routes.draw do
  resources :rooms, only: [:index, :show]
  resources :guests, only: [:index, :show]
  resources :reservations, only: [:index, :show]
  resources :services, only: [:index, :show]

  root "rooms#index"   # set homepage
end
