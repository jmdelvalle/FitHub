require "rails_helper"

RSpec.describe SetsAndRepsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sets_and_reps").to route_to("sets_and_reps#index")
    end

    it "routes to #new" do
      expect(:get => "/sets_and_reps/new").to route_to("sets_and_reps#new")
    end

    it "routes to #show" do
      expect(:get => "/sets_and_reps/1").to route_to("sets_and_reps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sets_and_reps/1/edit").to route_to("sets_and_reps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sets_and_reps").to route_to("sets_and_reps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sets_and_reps/1").to route_to("sets_and_reps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sets_and_reps/1").to route_to("sets_and_reps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sets_and_reps/1").to route_to("sets_and_reps#destroy", :id => "1")
    end

  end
end
