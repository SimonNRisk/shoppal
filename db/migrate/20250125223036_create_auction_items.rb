class CreateAuctionItems < ActiveRecord::Migration[8.0]
  def change
    create_table :auction_items do |t|
      t.string :title
      t.text :description
      t.decimal :starting_bid
      t.decimal :current_bid
      t.datetime :end_time

      t.timestamps
    end
  end
end
