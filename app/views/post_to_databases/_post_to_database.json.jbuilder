json.extract! post_to_database, :id, :name, :title, :content, :created_at, :updated_at
json.url post_to_database_url(post_to_database, format: :json)