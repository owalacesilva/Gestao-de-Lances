require 'rails_helper'

RSpec.describe Auction, type: :model do
  let(:admin) { create(:admin) }
  
  context "when create model" do
    let(:auction) { build(:auction, admin: admin) }

    it "is valid with valid attributes" do
      expect(auction).to be_valid
    end
  
    it "is not valid without a title" do
      auction.title = nil
      expect(auction).not_to be_valid
    end
  
    it "is not valid without a description" do
      auction.description = nil
      expect(auction).not_to be_valid
    end
  
    it "is not valid without a start_date" do
      auction.start_date = nil
      expect(auction).not_to be_valid
    end
  
    it "is not valid without a end_date" do
      auction.end_date = nil
      expect(auction).not_to be_valid
    end
  
    it "is not valid without a opening_bid" do
      auction.opening_bid = nil
      expect(auction).not_to be_valid
    end
  end
end
