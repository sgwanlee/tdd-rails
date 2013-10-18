require 'spec_helper'

describe "CreateCompetitions" do
	it "create competitions" do
		visit new_competition_path
		fill_in "Name", with: "Random"
		click_button "Submit"

		# page.body.should have_selector "h1" not working
		page.should have_selector ".flash.notice"	# working
		page.should have_content	"Competition created."
	end
end
