Rails.application.routes.draw do
  #define RESTful routes for Auction Items and Bids
  resources :auction_items, only: [:index, :show] do
    resources :bids, only: [:create]
  end

  root "auction_items#index"

end
