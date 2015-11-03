require "rails_helper"

RSpec.describe WorkoutsExercisesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workouts_exercises").to route_to("workouts_exercises#index")
    end

    it "routes to #new" do
      expect(:get => "/workouts_exercises/new").to route_to("workouts_exercises#new")
    end

    it "routes to #show" do
      expect(:get => "/workouts_exercises/1").to route_to("workouts_exercises#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workouts_exercises/1/edit").to route_to("workouts_exercises#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workouts_exercises").to route_to("workouts_exercises#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workouts_exercises/1").to route_to("workouts_exercises#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workouts_exercises/1").to route_to("workouts_exercises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workouts_exercises/1").to route_to("workouts_exercises#destroy", :id => "1")
    end

  end
end
