class BidsController < ApplicationController
  before_action :authenticate_user!

  def create
    @auction_item = AuctionItem.find(params[:auction_item_id])
    @bid = @auction_item.bids.build(bid_params)
    @bid.user = current_user

    if @bid.amount >= @auction_item.current_bid + 1
      @auction_item.update(current_bid: @bid.amount)
      @bid.save
      redirect_to auction_item_path(@auction_item), notice: "Bid placed successfully!"
    else
      redirect_to auction_item_path(@auction_item), alert: "Your bid must be higher than the current bid."
    end
  end

  private

  def bid_params
    params.require(:bid).permit(:amount)
  end
end
