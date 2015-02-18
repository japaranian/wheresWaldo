class MatchController < ApplicationController

	def new
		render(:new)
	end

	def easy
		render(:easy)
	end

	def intermediate
		render(:intermediate)
	end

	def difficult
		render(:difficult)
	end

end