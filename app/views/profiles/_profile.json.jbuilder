json.extract! profile, :id, :name, :surename, :phonenumber, :email, :created_at, :updated_at
json.url profile_url(profile, format: :json)
