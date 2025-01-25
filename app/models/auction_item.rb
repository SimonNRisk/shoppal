class AuctionItem < ApplicationRecord
    has_many :bids, dependent: :destroy

    validates :name, presence: true
    validates :current_bid, numericality: { greater_than_or_equal_to: 0 }

end
