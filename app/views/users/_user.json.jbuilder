json.extract! user, :id, :userID, :userName, :password, :courseID, :created_at, :updated_at
json.url user_url(user, format: :json)
