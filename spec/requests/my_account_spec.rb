require 'rails_helper'

RSpec.describe "MyAccounts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/my_account/index"
      expect(response).to have_http_status(:success)
    end
  end

end
