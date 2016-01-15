class Job < ActiveRecord::Base
	belongs_to :users
	belongs_to :boats

def l
	Boat::LOCATIONS
end
	
end
