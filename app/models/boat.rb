class Boat < ActiveRecord::Base
	has_many :jobs
	has_many :users, through: :jobs

	# validate :current_l,  

	LOCATIONS = ["New York", "China", "India", "South Africa", "Pakistan", "North Pole", "Philadelphia", "Brazil", "Argentina","Neatherlands", "Laos", "Japan", "Columbia", "Cuba"]
	DESTINATIONS = ["New York", "China", "India", "South Africa", "Pakistan", "North Pole", "Philadelphia", "Brazil", "Argentina","Neatherlands", "Laos", "Japan", "Columbia", "Cuba"]

	def location
		LOCATIONS[self.current_l]
	end


	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



end
