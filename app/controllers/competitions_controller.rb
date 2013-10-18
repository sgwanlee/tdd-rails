class CompetitionsController < ApplicationController
	
	def new
		@competition = Competition.new
	end

	def show
	end
	

	def create
		puts params
		@competition = Competition.new(competition_params)
		if @competition.save
			redirect_to @competition, notice: "Competition created."
		else
			render :new
		end
	end


	private

	def competition_params
		# params[:competition]
		puts params.require(:competition).permit(:name)
	end
end