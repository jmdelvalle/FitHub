require 'rails_helper'

RSpec.describe "GymsUsers", type: :request do
  describe "GET /gyms_users" do
    it "works! (now write some real specs)" do
      get gyms_users_path
      expect(response).to have_http_status(200)
    end
  end
end
