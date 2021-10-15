require 'rails_helper'

RSpec.describe "Rewards", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/reward/index"
      expect(response).to have_http_status(:success)
    end
  end

end
