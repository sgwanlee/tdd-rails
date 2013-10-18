class Team < ActiveRecord::Base

	def enter_competition competition
		raise Competition::Closed if competition.questions.empty?

		enroll = Enroll.new team: self, competition: competition
		enroll.save
		enroll
	end	
end
