class Job < ActiveRecord::Base
	belongs_to :user
	belongs_to :boat

def o
	Boat::LOCATIONS[self.origin]
end

def d
	Boat::DESTINATIONS[self.destination]
end

	
end
