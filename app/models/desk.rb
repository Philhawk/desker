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
	belongs_to :user
	has_many :users
	has_many :reviews
	geocoded_by :address
    validates :title, :presence => true
    validates :price, :presence => true
	after_validation :geocode

		has_attached_file :thumbnail, :styles => { :large => "400x>", :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  					  # :storage => :dropbox,
    				 #  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				 # :path => ":style/:id_:filename"
   		validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/


	 # def thumbnail
  #        @desk.thumbnail.url(:medium)
  #   end
end
