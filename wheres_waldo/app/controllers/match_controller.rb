class MatchController < ApplicationController

	def new
		render(:new)
	end

	def create
		image = Image.find_by(level: params["level"])
		match = Match.new(player_one: session[:user_id], level: params["level"], image_id: image.id)
		match.save
		redirect_to "/users/#{session[:user_id]}/match/#{match.id}"
	end

	def view
		match = Match.find_by(id: params[:id])
		@image = Image.find_by(id: match.image_id)
	end
end