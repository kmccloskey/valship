class Job < ActiveRecord::Base
	belongs_to :users
	belongs_to :boats

def o
	Boat::LOCATIONS[self.origin]
end

def d
	Boat::DESTINATIONS[self.destination]
end

	
end
