# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text
#  role            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#


# Requires the Rails Helper. This is needed in order to use RSpec in a Rails project.

require 'rails_helper'

RSpec.describe User, :type => :model do

		describe '.new' do

			# Can a new user object be created?
			it 'creates a user object' do
				user = User.new(:name => 'Phil Jacob')
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
				expect(user.name).to_not be_valid
			end

			# Can a new user email object be created?
			it 'assigns an email address to the user object' do
				user = User.new(:email => 'phil@phil.com')
				expect(user.email).to eq 'phil@phil.com'
			end

			# Can a user be created without an email address?
			it 'cannot be created without an email address' do
				user = User.new(:email => '')
				expect(user.email).to_not be_valid
			end

			# Can a password be stored in the database?
			it 'assigns a password to the user object' do
				user = User.new(:password => 'fatties', :password_confirmation => 'fatties')
				expect(user.password_digest).to be_valid
			end

			# Does the password and the password_confirmation match?
			it 'checks that the password and the password_confirmation match' do
				user = User.new(:password => 'fatties', password_confirmation => 'notfatties')
				expect(user.password_digest).to_not be_valid
			end	

			# Can a user be created without a password?
			it 'cannot be created without a password' do
				user = User.new(:password => '', password_confirmation => '')
				expect(user.password_digest).to_not be_valid
			end
		end
end



