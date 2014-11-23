# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  password_digest     :string(255)
#  role                :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

# Requires the Rails Helper. This is needed in order to use RSpec in a Rails project.

require 'rails_helper'

RSpec.describe User, :type => :model do

		describe '.new' do

			# Create a valid user when all attributes are provided
			it 'creates a valid user with the required attributes (email, password, name)' do
				user = User.new(:name => 'horselover', :email => 'phil@phil.com', :password => 'fatties', :password_confirmation => 'fatties')
				expect(user).to be_valid
			end

			# Can a new user object be assigned a name?
			it 'assigns a name to the user object' do
				user = User.new(:name => 'Phil Jacob')
				expect(user.name).to eq 'Phil Jacob'
			end


			# Can a user be created without a name?
			it 'cannot be created without a name' do
				user = User.new(:name => '')
				expect(user).to_not be_valid
			end

			# Can a new user email object be created?
			it 'assigns an email address to the user object' do
				user = User.new(:email => 'phil@phil.com')
				expect(user.email).to eq 'phil@phil.com'
			end

			# Can a user be created without an email address?
			it 'cannot be created without an email address' do
				user = User.new(:email => '')
				expect(user).to_not be_valid
			end

			# Does the password and the password_confirmation match?
			it 'checks that the password and the password_confirmation match' do
				user = User.new(:name => 'fatty', :email => 'fat@fatties.com', :password => 'fatties', :password_confirmation => 'notfatties')
				expect(user).to_not be_valid
			end	

			# Can a user be created without a password?
			it 'cannot be created without a password' do
				user = User.new(:name => 'fatty', :email => 'fat@fatties.com', :password => '', :password_confirmation => '')
				expect(user).to_not be_valid
			end
		end
end



