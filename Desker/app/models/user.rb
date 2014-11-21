# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text
#  class           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

  #Rusli  Start 
  has_secure_password
  validates :name, :presence => true
  validates :email, :presence => true
  #Rusli Stop 

	has_many :venues
	has_many :desks

end
