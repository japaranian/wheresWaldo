class Image < ActiveRecord::Base
	self.belongs_to(:match)
end