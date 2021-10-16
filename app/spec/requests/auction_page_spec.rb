require 'rails_helper'

RSpec.describe "AuctionPages", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/auction_page/show"
      expect(response).to have_http_status(:success)
    end
  end

end
