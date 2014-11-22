
# == Schema Information
#
# Table name: desks
#
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  address                :text
#  latitude               :float
#  longitude              :float
#  price                  :integer
#  desk_type              :string(255)
#  thumbnail              :text
#  created_at             :datetime
#  updated_at             :datetime
#  thumbnail_file_name    :string(255)
#  thumbnail_content_type :string(255)
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
#


require 'rails_helper'

RSpec.describe Desk, :type => :model do
  describe 'Desk' do 

    #create a new desk object to be valid
    it 'is creates a valid desk with the required attributes(title, description, address, price, desk_type)' do
      desk = Desk.new(:title =>'desk for rent', :description => 'Only 15min walk to the famous Bondi beach. With the scenic coastal walk & cafes right at your door step.', :address => '177 Bronte Street, Bondi', :price => '80', :desk_type => 'Hot Desk')
      expect(desk).to be_valid
    end

    #assign a title to a desk object
    it 'assigns a title to the desk object' do 
      desk = Desk.new(:title => 'large window facing')
      expect(desk.title).to eq 'large window facing'
    end 

   
    #can a desk be created without a title?
    it 'cannot be created without a title' do
      desk = Desk.new(:title => '')
      expect(desk).to_not be_valid
    end

    #can a description be added to the desk object?
    it 'assigns a description to the desk object' do
      desk = Desk.new(:description => 'Only 15min walk to the famous Bondi beach. With the scenic coastal walk & cafes right at your door step.') 
      expect(desk.description).to eq 'Only 15min walk to the famous Bondi beach. With the scenic coastal walk & cafes right at your door step.'
    end

    #can a description be added to the desk object without input?
    it 'does not allow a description to be added to the desk object without input' do
       desk = Desk.new(:description => '')
       expect(desk).to_not be_valid
    end

    #assign price to the desk object
    it 'assigns a price to the desk object' do
      desk = Desk.new(:price => '80')
      expect(desk.price).to eq 80
    end

    #it's invalid without a price assign to a desk
    it 'is invalid without a price' do 
      desk = Desk.new(:price => '')
      
      expect(desk).to_not be_valid
    end 

    # Can a desk type be assigned to the desk object
    it 'assigns a desk_type to the desk object' do
      desk = Desk.new(:desk_type => 'Hot Desk')
      expect(desk.desk_type).to eq 'Hot Desk'
    end
    
    #it's invalid without a desk_type assign to a desk
    it 'is invalid without a price' do 
      desk = Desk.new(:price => '')
      expect(desk).to_not be_valid
    end 

    # test if desk has locations , does it have lat long?
  
  end
end 
