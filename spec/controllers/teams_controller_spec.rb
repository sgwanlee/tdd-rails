require 'spec_helper'

describe TeamsController do
	let(:team) { FactoryGirl.create :team}

	context "having questions" do
		let(:competition) { FactoryGirl.create :competition}

		it "allows a team to enter a competition" do
			post(:enter_competition, id: team.id, competition_id: competition.id)
			# post(:enter_competition)

			# assigns(:enroll).team.should_not == team
			assigns(:enroll).team.should == team
			assigns(:enroll).competition.should == competition
		end
	end

	context "having no questions" do
	  let(:competition) { FactoryGirl.create :empty_competition}

	  it "doesn't allow a team to enter a competition" do
	  	p competition
	  	post(:enter_competition, id: team.id, competition_id: competition.id)

	  	response.status.should == 302 #
	  end
	end
end
