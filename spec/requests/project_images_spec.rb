require 'rails_helper'

RSpec.describe "ProjectImages", :type => :request do
  describe "GET /project_images" do
    it "works! (now write some real specs)" do
      get project_images_path
      expect(response.status).to be(200)
    end
  end
end
