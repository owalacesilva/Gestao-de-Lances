require 'rails_helper'

RSpec.describe "Admins::AuctionPictures", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admins/auction_pictures/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/admins/auction_pictures/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/admins/auction_pictures/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/admins/auction_pictures/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
