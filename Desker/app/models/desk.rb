class Desk < ActiveRecord::Base
	belongs_to :venue
	has_many :users
	has_attached_file :thumbnail, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpg"
  	validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
