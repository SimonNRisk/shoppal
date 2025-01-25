class AuctionItem < ApplicationRecord
    has_many :bids, dependent: :destroy
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    belongs_to :winner, class_name: "User", foreign_key: "winner_id", optional: true


    validates :name, presence: true
    validates :current_bid, numericality: { greater_than_or_equal_to: 0 }

end
