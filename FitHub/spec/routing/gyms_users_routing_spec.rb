require "rails_helper"

RSpec.describe GymsUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gyms_users").to route_to("gyms_users#index")
    end

    it "routes to #new" do
      expect(:get => "/gyms_users/new").to route_to("gyms_users#new")
    end

    it "routes to #show" do
      expect(:get => "/gyms_users/1").to route_to("gyms_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gyms_users/1/edit").to route_to("gyms_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gyms_users").to route_to("gyms_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gyms_users/1").to route_to("gyms_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gyms_users/1").to route_to("gyms_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gyms_users/1").to route_to("gyms_users#destroy", :id => "1")
    end

  end
end
