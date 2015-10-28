require 'rails_helper'

RSpec.describe "UsersWorkouts", type: :request do
  describe "GET /users_workouts" do
    it "works! (now write some real specs)" do
      get users_workouts_path
      expect(response).to have_http_status(200)
    end
  end
end
