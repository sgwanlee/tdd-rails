class Competition < ActiveRecord::Base
	has_many :questions


	class Closed < StandardError
	end
	
end
