class Course < ApplicationRecord

	validates :courseID, :courseName, :courseContentID, presence: true
	has_many :users
	
end