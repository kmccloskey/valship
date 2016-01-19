class Job < ActiveRecord::Base
	belongs_to :user
	belongs_to :boat

# I'm checking to see if te origin value is nil here, it looks like a few jobs have a nil origin
	def text_origin
		# puts "Is this working *******************************"
		if self.origin != nil
			Boat::LOCATIONS[self.origin]
		else
			"ORIGIN NOT SET"
		end
	end

	def dog
		puts ("woof")
	end

	def dest
		Boat::DESTINATIONS[self.destination]
	end

	
end
