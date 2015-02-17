class SessionController < ApplicationController

	def new
		if session[:user_id] != nil
			redirect_to "/users/#{session[:user_id]}"
		else
			render :new
		end
	end


	def create
		user = User.find_by(email: params["email"])
		if user && user.authenticate(params["password"])
			session[:user_id] = user.id
			session[:user_name] = user.fname
			redirect_to "/users/#{user.id}"
		else
			@error = true
			render(:new)
		end
	end


	def destroy
		reset_session
		redirect_to "/"
	end

end