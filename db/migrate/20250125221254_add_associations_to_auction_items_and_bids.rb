class AddAssociationsToAuctionItemsAndBids < ActiveRecord::Migration[8.0]
  def change
    add_reference :auction_items, :creator, foreign_key: { to_table: :users }
    add_reference :auction_items, :winner, foreign_key: { to_table: :users }
    add_reference :bids, :user, foreign_key: true
  end
end
