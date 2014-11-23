require 'rails_helper'

RSpec.describe "Desks", :type => :request do
  describe "GET /desks" do
    it "works! (now write some real specs)" do
      get desks_path
      expect(response).to have_http_status(200)
    end
  end
end
