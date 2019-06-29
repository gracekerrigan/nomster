class Comment < ApplicationRecorduser
	belongs_to :user
	belongs_to :place
end
