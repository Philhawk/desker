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

<<<<<<< HEAD
=======
# Requires the Rails Helper. This is needed in order to use RSpec in a Rails project.
>>>>>>> abd0526c94b2f58c7c6fb91d04fde3b59f219912
require 'rails_helper'

RSpec.describe User, :type => :model do

	# Can a new username be created?
	describe '.new' do
		it 'creates a user object' do
			user = User.new(:name => 'Phil Jacob')
			expect(user).to_not eq nil
		end

		it 'assigns a name to the user object' do
			user = User.new(:name => 'Phil Jacob')
			expect(user.name).to eq 'Phil Jacob'
		end
	end
end
