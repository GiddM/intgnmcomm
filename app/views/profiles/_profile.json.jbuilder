json.extract! profile, :id, :address, :profession, :description, :image_url, :created_at, :updated_at
json.url profile_url(profile, format: :json)