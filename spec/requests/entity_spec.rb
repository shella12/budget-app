require 'rails_helper'

RSpec.describe "Entities", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/entity/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/entity/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/entity/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/entity/create"
      expect(response).to have_http_status(:success)
    end
  end

end
