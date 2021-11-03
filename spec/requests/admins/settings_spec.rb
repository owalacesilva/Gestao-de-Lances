require 'rails_helper'

RSpec.describe "Admins::Settings", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admins/settings/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/admins/settings/update"
      expect(response).to have_http_status(:success)
    end
  end

end
