require 'rails_helper'

RSpec.describe "WorkoutsExercises", type: :request do
  describe "GET /workouts_exercises" do
    it "works! (now write some real specs)" do
      get workouts_exercises_path
      expect(response).to have_http_status(200)
    end
  end
end
