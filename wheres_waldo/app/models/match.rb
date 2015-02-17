class Match < ActiveRecord::Base
	self.belongs_to(:user)
	self.has_many(:images)
end