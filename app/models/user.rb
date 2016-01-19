class User < ActiveRecord::Base
	has_secure_password 
	validates_confirmation_of :password
	validates_presence_of :password, on: :create

	has_many :jobs
	has_many :boats, through: :jobs

	has_many :users_follow_ships
	has_many :followed_boats, source: :boat, through: :users_follow_ships

end
