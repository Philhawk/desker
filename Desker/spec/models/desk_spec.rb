# == Schema Information
#
# Table name: desks
#
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  address                :text
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
    # it 'create a desk object' do
    # desk = Desk.new(:title => 'Good loca') 
    # end

    it 'is creates a valid desk with the required attributes(title, description, price, availability, amenities, desk_type and thumbnail)' do
      desk = Desk.new(:title =>'', :description => '', )
    end

    it 'is invalid without a title' do 
    end 

    it 'is invalid without a description' do 
    end 

    it 'is invalid without a price' do 
    end 

    it 'is invalid without '
  # pending "add some examples to (or delete) #{__FILE__}"
  end
