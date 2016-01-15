class Boat < ActiveRecord::Base
	has_many :jobs
	has_many :user, through: :jobs

	# validate :current_l,  

	LOCATIONS = ["New York", "China", "India", "South Africa", "Pakistan", "North Pole", "Philadelphia", "Brazil", "Argentina","Neatherlands", "Laos", "Japan", "Columbia", "Cuba"]
	DESTINATIONS = ["New York", "China", "India", "South Africa", "Pakistan", "North Pole", "Philadelphia", "Brazil", "Argentina","Neatherlands", "Laos", "Japan", "Columbia", "Cuba"]

	def location
		LOCATIONS[self.current_l]
	end



end
