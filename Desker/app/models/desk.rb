class Desk < ActiveRecord::Base
	belongs_to :venue
	has_many :users
end
