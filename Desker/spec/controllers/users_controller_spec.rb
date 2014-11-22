
require 'spec_helper'
require 'rails_helper'


RSpec.describe UsersController do
  describe 'GET to index' do
    describe 'as HTML' do
      before do 
       get :new
      end

      it 'should respond with a status 200' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should render new template' do
        expect(response).to render_template('new')
      end
    end
  end 
end
# #Rusli Start  
#  require 'rails_helper'

#  RSpec.describe UsersController, :type => :controller do
#   describe "GET index" do 

#     # If a Get request is made to Index, it should be sucessful.
#     it "should load successfuly" do
#       expect(response).to be_success
#       expect(response.status).to eq(200)
#     end

#     # A new-user template is rendered.
#     it "should render new user template" do
#       expect(response).to render_template('new') 
#     end
#   end 

  # describe "POST to create" do 

  #   #create a new user with valid params 
  #   describe 'a user with a valid params' do 
  #     before do 
  #       post : 
  #     end 

  

#Rusli Stop 

>>>>>>> d9328e8aed2242c5c248f10ff82a0d22ade3f3c6
