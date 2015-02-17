class UsersController < ApplicationController

	def new
		render(:new)
	end

	def view
		if session[:user_id] == (params[:id].to_i)
 			user = User.find_by(id: params[:id])
			render(:view, { locals: {user: user} })
		else
			redirect_to "/"
		end
	end

	def create
		new_user = User.new({ fname: params["fname"], lname: params["lname"], email: params["email"], password: params[:password]})
		new_user.save
		session[:user_id] = new_user.id
		binding.pry
		redirect_to "/users/#{new_user.id}"
	end


end