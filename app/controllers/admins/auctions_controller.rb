class Admins::AuctionsController < ApplicationController
  def index
    @resources = current_admin.auctions
  end

  def show
  end

  def new
    @resource = Auction.new
  end

  def create
    @resource = current_admin.auctions.new(auction_params)
    if @resource.save!
      redirect_to admins_auctions_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def auction_params
    params.require(:auction).permit([:title, :description, :important_notices, :start_date, :end_date, :opening_bid, :modality,
      :postal_code, :street_address, :street_number, :neighborhood, :city, :state, :country])
  end
end
