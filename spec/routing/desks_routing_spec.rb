require "rails_helper"

RSpec.describe DesksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desks").to route_to("desks#index")
    end

    it "routes to #new" do
      expect(:get => "/desks/new").to route_to("desks#new")
    end

    it "routes to #show" do
      expect(:get => "/desks/1").to route_to("desks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/desks/1/edit").to route_to("desks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/desks").to route_to("desks#create")
    end

    it "routes to #update" do
      expect(:put => "/desks/1").to route_to("desks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/desks/1").to route_to("desks#destroy", :id => "1")
    end

  end
end
