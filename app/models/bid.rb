class Bid < ApplicationRecord
  belongs_to :auction_item
  validates :amount, numericality: { greater_than: 0 }

end
