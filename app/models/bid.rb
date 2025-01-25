class Bid < ApplicationRecord
  belongs_to :auction_item
  belongs_to :user
  validates :amount, numericality: { greater_than: 0 }

end
