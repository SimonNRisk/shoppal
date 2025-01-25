json.extract! auction_item, :id, :title, :description, :starting_bid, :current_bid, :end_time, :image, :created_at, :updated_at
json.url auction_item_url(auction_item, format: :json)
json.image url_for(auction_item.image)
