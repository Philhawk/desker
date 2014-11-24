require 'rails_helper'

RSpec.describe DesksController, :type => :controller do
  describe 'GET to index' do
    describe 'as HTML' do
      before do 
       get :new
      end

    describe 'as JSON' do 
      before do
        get :new
      end 

      # If a Get request is made to Index, it should be sucessful.
      it "should load successfuly" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      # A new-user template is rendered.
      it "should render new user template" do
        expect(response).to render_template('new')
      end
    end
    end
  end 

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Desk with correct attributes" do
        desk = Desk.new(:title =>'desk for rent', :description => 'Only 15min walk to the famous Bondi beach. With the scenic coastal walk & cafes right at your door step.', :address => '177 Bronte Street, Bondi', :price => '80', :desk_type => 'Hot Desk')
        expect(desk).to be_valid
      end

      it "should save to database successfuly" do 
        expect(Desk.count) == 1
      end
    end
  end
end
