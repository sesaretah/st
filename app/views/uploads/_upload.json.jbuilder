json.extract! upload, :id, :token, :created_at, :updated_at
json.url upload_url(upload, format: :json)
