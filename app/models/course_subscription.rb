class CourseSubscription < ActiveRecord
	belongs_to :user
	belongs_to :course	
end