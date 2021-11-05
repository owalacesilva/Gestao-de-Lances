class Admins::AuctionPicturesController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :verify_authenticity_token

  def index
    @auction = current_admin.auctions.find(params[:auction_id])
    if request.xhr?
      files = @auction.pictures.map.with_index do |picture, index| 
        {
          deleteType: "DELETE",
          deleteUrl: admins_auction_auction_picture_url(id: index + 1, auction_id: @auction.id),
          name: "Visualizar foto",
          size: 0,
          thumbnailUrl: url_for(picture),
          type: "image/jpeg",
          url: url_for(picture),
        }
      end

      render json: { files: files }
    else
      render :index
    end
  end

  def show
  end

  def create
    auction = current_admin.auctions.find(params[:auction_id])
    auction.pictures.attach(params[:files])
    if auction.pictures.attached?
      files = auction.pictures.map.with_index do |picture, index| 
        {
          deleteType: "DELETE",
          deleteUrl: admins_auction_auction_picture_url(id: index + 1, auction_id: auction.id),
          name: "Visualizar foto",
          size: 0,
          thumbnailUrl: url_for(picture),
          type: "image/jpeg",
          url: url_for(picture),
        }
      end

      render json: { files: files }
    else
      render json: { success: false }
    end
  end

  def destroy
  end
end
