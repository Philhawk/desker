# == Schema Information
#
# Table name: venues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  contact     :text
#  no_desks    :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Venue < ActiveRecord::Base
	has_many :desks
end
