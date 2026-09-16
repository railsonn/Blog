json.extract! user, :id, :name, :email, :articles, :created_at, :updated_at
json.url user_url(user, format: :json)
