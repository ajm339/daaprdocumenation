require 'rails_helper'

RSpec.describe "FileInstances", :type => :request do
  describe "GET /file_instances" do
    it "works! (now write some real specs)" do
      get file_instances_path
      expect(response.status).to be(200)
    end
  end
end
