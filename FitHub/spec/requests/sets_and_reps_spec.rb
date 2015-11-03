require 'rails_helper'

RSpec.describe "SetsAndReps", type: :request do
  describe "GET /sets_and_reps" do
    it "works! (now write some real specs)" do
      get sets_and_reps_path
      expect(response).to have_http_status(200)
    end
  end
end
