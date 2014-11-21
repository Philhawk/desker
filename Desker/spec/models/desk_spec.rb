# == Schema Information
#
# Table name: desks
#
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  price                  :integer
#  availability           :boolean
#  amenities              :text
#  desk_type              :string(255)
#  thumbnail              :text
#  created_at             :datetime
#  updated_at             :datetime
#  thumbnail_file_name    :string(255)
#  thumbnail_content_type :string(255)
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
#

<<<<<<< HEAD
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
=======
#  id                     :integer          not null, primary key
#  title                  :string(255)
#  description            :string(255)
#  price                  :integer
#  availability           :boolean
#  amenities              :text
#  desk_type              :string(255)
#  thumbnail              :text
#  created_at             :datetime
#  updated_at             :datetime
#  thumbnail_file_name    :string(255)
#  thumbnail_content_type :string(255)
#  thumbnail_file_size    :integer
#  thumbnail_updated_at   :datetime
>>>>>>> abd0526c94b2f58c7c6fb91d04fde3b59f219912
#

require 'rails_helper'

RSpec.describe Desk, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
