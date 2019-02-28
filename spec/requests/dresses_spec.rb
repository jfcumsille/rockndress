require 'rails_helper'

RSpec.describe "Dresses", type: :request do
  describe "GET /dresses" do
    it "works! (now write some real specs)" do
      get dresses_path
      expect(response).to have_http_status(200)
    end
  end
end
