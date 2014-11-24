require 'spec_helper'
require 'rails_helper'

RSpec.describe UsersController do
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

  describe 'POST to create' do
    describe 'a user with valid information' do
      before do
        post :create, { :user => { :firstname => 'test', :email => 'test@test.com', :password => 'test', :password_confirmation => 'test' } }
      end
        
      it 'should create a user' do
        expect(User.count) == 1
      end
  
      it 'should redirect to (@user)' do
        expect(response).to redirect_to(assigns(:user))
      end
    end
  
    describe 'a user with invalid information' do
      before do
        post :create, { :user => { :firstname => 'test', :email => 'test@test.com', :password => 'test', :password_confirmation => '123' } }
      end

      it 'should create a user with invalid details' do
        expect(User.count).to eq(0)
     end

     it 'should render :new if not sign up not successful' do 
       expect(response).to render_template("new")
     end
    end
  end   
end
