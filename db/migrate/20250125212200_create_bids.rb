class CreateBids < ActiveRecord::Migration[8.0]
  def change
    create_table :bids do |t|
      t.string :user
      t.decimal :amount
      t.references :auction_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
