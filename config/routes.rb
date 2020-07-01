Rails.application.routes.draw do
  resources :appearances
  # route needs to match [GET] "/guests/x"  
  resources :guests, only: [:index, :show]
  # route needs to match [GET] "/episodes/x"
  resources :episodes, only: [:index, :show]
end
