require "spec_helper"

describe DashboardsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboards").to route_to("dashboards#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboards/new").to_not route_to("dashboards#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboards/1").to_not route_to("dashboards#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboards/1/edit").to_not route_to("dashboards#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboards").to_not route_to("dashboards#create")
    end

    it "routes to #update" do
      expect(:put => "/dashboards/1").to_not route_to("dashboards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboards/1").to_not route_to("dashboards#destroy", :id => "1")
    end

  end
end
