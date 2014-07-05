require "rails_helper"

RSpec.describe FileMethodsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/file_methods").to route_to("file_methods#index")
    end

    it "routes to #new" do
      expect(:get => "/file_methods/new").to route_to("file_methods#new")
    end

    it "routes to #show" do
      expect(:get => "/file_methods/1").to route_to("file_methods#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/file_methods/1/edit").to route_to("file_methods#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/file_methods").to route_to("file_methods#create")
    end

    it "routes to #update" do
      expect(:put => "/file_methods/1").to route_to("file_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/file_methods/1").to route_to("file_methods#destroy", :id => "1")
    end

  end
end
