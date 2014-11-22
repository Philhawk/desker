# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text
#  role            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  
	attr_accessor :name

	# def initialize
	# 	@name = Name.new
	# end

	has_many :desks
	has_many :venues

  # #Rusli  Start 
  has_secure_password
  validates :name, :presence => true

  # Checks that the password is between 6 and 20 characters
  validates :password, length: { minimum: 6 }



  # validates :email, :presence => true
  # #Rusli Stop 



end
