require 'rails_helper'

RSpec.describe "PotatoePrices", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/potatoe_prices/index"
      expect(response).to have_http_status(:success)
    end
  end

end
