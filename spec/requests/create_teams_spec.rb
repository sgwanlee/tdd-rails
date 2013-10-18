require 'spec_helper'

describe "CreateTeams" do
	it "creates teams" do
		visit new_team_path

		fill_in "Name", with: "Ruby team"
		click_button "Submit"

		# For debugging
		# page.body.should == ""
		page.should have_selector(".flash.notice", text: %q{Created team "Ruby team".})

	end
end
