# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  role            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  


	has_many :desks
	has_many :venues

  # #Rusli  Start 
  has_secure_password
  validates :name, :presence => true

  # Checks that the password is between 6 and 20 characters
  validates :password, length: { minimum: 6 }
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  if Rails.env.development?
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
  else
  has_attached_file :avatar, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :path => ":style/:id_:filename"
   end

      

end

