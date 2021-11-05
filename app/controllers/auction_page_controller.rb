class AuctionPageController < ApplicationController
  def show
    @auction = Auction.find(params[:id])
  end
end
