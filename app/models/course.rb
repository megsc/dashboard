class Course < ApplicationRecord

	validates :course_id, :course_name, :coursecontent_id, presence: true
	has_many :users
	
	
end