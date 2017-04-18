json.extract! coursecontent, :id, :course_id, :content_name, :content_description, :created_at, :updated_at
json.url coursecontent_url(coursecontent, format: :json)
