class AuctionItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @auction_item = current_user.created_auction_items.build(auction_item_params)

    if @auction_item.save
      redirect_to auction_items_path, notice: "Auction item created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def close_auction
    @auction_item = AuctionItem.find(params[:id])
    highest_bid = @auction_item.bids.order(amount: :desc).first

    if highest_bid
      @auction_item.update(winner: highest_bid.user)
      redirect_to auction_item_path(@auction_item), notice: "Auction closed! Winner: #{highest_bid.user.name}"
    else
      redirect_to auction_item_path(@auction_item), notice: "Auction closed with no bids."
    end
  end

  private

  def auction_item_params
    params.require(:auction_item).permit(:name, :description, :starting_bid, :current_bid, :end_time, :image)
  end
end
