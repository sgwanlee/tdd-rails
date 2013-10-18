class TeamsController < ApplicationController

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		puts @team.inspect
		if @team.save
			redirect_to @team, notice: %Q{Created team "#{@team.name}".}
		else
			render :new
		end
	end

	def show
		@team = Team.find params[:id]
	end

	private

	def team_params
		# params[:name]
		params.require(:team).permit(:name)
	end

end