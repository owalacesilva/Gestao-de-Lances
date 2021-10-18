require 'rails_helper'

RSpec.describe "Bets", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/bets/index"
      expect(response).to have_http_status(:success)
    end
  end

end
