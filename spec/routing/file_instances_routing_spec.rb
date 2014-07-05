require "rails_helper"

RSpec.describe FileInstancesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/file_instances").to route_to("file_instances#index")
    end

    it "routes to #new" do
      expect(:get => "/file_instances/new").to route_to("file_instances#new")
    end

    it "routes to #show" do
      expect(:get => "/file_instances/1").to route_to("file_instances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/file_instances/1/edit").to route_to("file_instances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/file_instances").to route_to("file_instances#create")
    end

    it "routes to #update" do
      expect(:put => "/file_instances/1").to route_to("file_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/file_instances/1").to route_to("file_instances#destroy", :id => "1")
    end

  end
end
