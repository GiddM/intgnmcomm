json.extract! moneypost, :id, :address, :type, :price, :description, :image_url, :created_at, :updated_at
json.url moneypost_url(moneypost, format: :json)