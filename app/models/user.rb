# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  password_digest     :string(255)
#  avatar              :text
#  role                :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class User < ActiveRecord::Base
  


	has_many :desks
	has_many :venues

  # #Rusli  Start 
  has_secure_password
  validates :name, :presence => true

  # Checks that the password is between 6 and 20 characters
  validates :password, length: { minimum: 6 }
  

 
  has_attached_file :avatar, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
                    # :storage => :dropbox,
                    # :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    # :path => ":style/:id_:filename"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

      

end

