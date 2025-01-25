class CreateAuctionItems < ActiveRecord::Migration[8.0]
  def change
    create_table :auction_items do |t|
      t.string :name
      t.text :description
      t.decimal :current_bid

      t.timestamps
    end
  end
end
