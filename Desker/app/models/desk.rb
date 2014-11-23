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

class Desk < ActiveRecord::Base
	searchkick
	belongs_to :venue
	has_many :users
	geocoded_by :address
  validates :title, :presence => true
  validates :price, :presence => true
	after_validation :geocode
	has_attached_file :thumbnail, :styles => { :large => "400x>", :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  	validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
