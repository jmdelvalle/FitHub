require "rails_helper"

RSpec.describe UsersWorkoutsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users_workouts").to route_to("users_workouts#index")
    end

    it "routes to #new" do
      expect(:get => "/users_workouts/new").to route_to("users_workouts#new")
    end

    it "routes to #show" do
      expect(:get => "/users_workouts/1").to route_to("users_workouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users_workouts/1/edit").to route_to("users_workouts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users_workouts").to route_to("users_workouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users_workouts/1").to route_to("users_workouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users_workouts/1").to route_to("users_workouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users_workouts/1").to route_to("users_workouts#destroy", :id => "1")
    end

  end
end
