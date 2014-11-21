# == Schema Information
#
# Table name: desks
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :string(255)
#  price        :integer
#  availability :boolean
#  amenities    :text
#  desk_type    :string(255)
#  thumbnail    :text
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Desk, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
