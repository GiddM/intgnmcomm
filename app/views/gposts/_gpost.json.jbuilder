json.extract! gpost, :id, :address, :type, :price, :description, :image_url, :created_at, :updated_at
json.url gpost_url(gpost, format: :json)