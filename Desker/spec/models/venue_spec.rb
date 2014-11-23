

# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  features    :text
#  contact     :text
#  no_desks    :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'


RSpec.describe Venue, :type => :model do

		describe '.new' do

			# Can a new venue object be created?
			it 'creates a venue object' do
				venue = Venue.new(:name => 'Fishburners')
				expect(venue).to be_valid
			end

			# Can a new venue object be assigned a name?
			it 'assigns a name to the venue object' do
				venue = Venue.new(:name => 'Fishburners')
				expect(venue.name).to eq 'Fishburners'
			end

			# Can a venue be created without a name?
			it 'cannot be created without a name' do
				venue = Venue.new(:name => '')
				expect(venue).to_not be_valid
			end

			# Can features be added to the venue object?
			it 'assigns features to the venue object' do
				venue = Venue.new(:features => 'Air-conditioning, WiFi and natural light') 
				expect(venue.features).to eq 'Air-conditioning, WiFi and natural light'
			end

			# Can features be added without input?
			it 'does not allow features to be added to the venue object without input' do
				venue = Venue.new(:features => '')
				expect(venue).to_not be_valid
			end

			# Can contact details be added to the venue object?
			it 'assigns contact details to the venue object' do
				venue = Venue.new(:contact => '(02) 8020 7472')
				expect(venue.contact).to eq '(02) 8020 7472'
			end

			# Can contact details be added without input?
			it 'does not allow contact details to be added to the venue object without input' do
				venue = Venue.new(:contact => '')
				expect(venue).to_not be_valid
			end

			# Can the number of desks be added to the venue object?
			it 'assigns number of desks to the venue object' do
				venue = Venue.new(:no_desks => 10)
				expect(venue.no_desks).to eq 10
			end

			# Can number of desks be added to the venue object without input?
			it 'does not allow features to be added to the venue object without input' do
				venue = Venue.new(:no_desks => '')
				expect(venue).to_not be_valid
			end

			# Can a description be added to the venue object?
			it 'assigns a description to the venue object' do
				venue = Venue.new(:description => '200sqm loft space in the CBD') 
				expect(venue.description).to eq '200sqm loft space in the CBD'
			end

			# Can a description be added to the venue object without input?
			it 'does not allow a description to be added to the venue object without input' do
				venue = Venue.new(:description => '')
<<<<<<< HEAD
				expect(venue.description).to_not be_valid
=======
				expect(venue).to_not be_valid
>>>>>>> d3a876c74171642c8b723fe7c8a342978984f3f3
			end
		end
end