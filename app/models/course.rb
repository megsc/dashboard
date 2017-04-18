class Course < ApplicationRecord

	validates :course_name, presence: true
	has_many :users
	has_many :coursecontents
	
end
