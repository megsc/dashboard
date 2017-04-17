class Coursecontent < ApplicationRecord

	validates :coursecontent_id, :content_name, :content_description, presence: true
	belongs_to :course
	
end