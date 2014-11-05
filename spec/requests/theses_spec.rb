require 'rails_helper'

RSpec.describe "Theses", :type => :request do
  describe "GET /theses" do
    it "works! (now write some real specs)" do
      get theses_path
      expect(response).to have_http_status(200)
    end
  end
end
