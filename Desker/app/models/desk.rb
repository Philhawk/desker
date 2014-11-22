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


#

class Desk < ActiveRecord::Base
	belongs_to :venue
	has_many :users
	has_attached_file :thumbnail, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
