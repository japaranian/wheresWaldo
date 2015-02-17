class UsersController < ApplicationController

	def new
		render(:new)
	end

	def view
		if session[:user_id] == (params[:id].to_i)
 			user = User.find_by(id: params[:id])
			render(:view, { locals: {user: user}})
		else
			redirect_to '/'
		end
	end


end