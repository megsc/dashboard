class CourseContent < ApplicationRecord

	validates :courseContentID, :contentName, :contentDescription, presence: true
	has_one :course
	
end