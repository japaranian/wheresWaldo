class MatchController < ApplicationController

	# require 'pusher'

	# Pusher.app_id = '107792'
	# Pusher.key = '413f66a2d19de89f34f2'
	# Pusher.secret = '6a726f14a2228e20c919'


	# Pusher.url = "http://413f66a2d19de89f34f2:6a726f14a2228e20c919@api.pusherapp.com/apps/107792"
	# Pusher.logger = Rails.logger

	def new
		@user = User.find_by(id: params[:id])
		render(:new)
	end

	def create
		image_level = Image.where(level: params["level"]) # will return array of all images with level
		image = image_level.sample #returns random image from array above
		match = Match.new(player_one: session[:user_id], level: params["level"], image_id: image.id)
		match.save

		redirect_to "/users/#{session[:user_id]}/match/#{match.id}"
	end

	def view
		match = Match.find_by(id: params[:id])
		@user = User.find_by(id: match.player_one)
		@image = Image.find_by(id: match.image_id)
	end

	# def hello_world
    
 #    	Pusher.trigger('my-channel', 'my-event', {:message => 'hello world'})
  	
 #  	end

end