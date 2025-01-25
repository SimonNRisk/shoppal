class AddAssociationsToAuctionItemsAndBids < ActiveRecord::Migration[8.0]
  def change
    # Add a reference to the creator in auction_items (creator is a user)
    add_reference :auction_items, :creator, foreign_key: { to_table: :users }

    # Add a reference to the winner in auction_items (winner is a user)
    add_reference :auction_items, :winner, foreign_key: { to_table: :users }

    # Add a reference to the user in bids
    add_reference :bids, :user, foreign_key: true
  end
end
