FactoryGirl.define do

	factory :team do
		name "Ruby team"
	end
	
	factory :competition do
		name "Competition with questions"

		# do something after building a factory
		after(:build) do |competition|
			FactoryGirl.create(:question, competition: competition)
		end
	end

	# empty_competition is not a class, so class argument is needed.
	factory :empty_competition, class: Competition do
		name "Competition without questions"
	end

	factory :question do
		competition nil
	end

end