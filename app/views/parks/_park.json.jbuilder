json.extract! park, :id, :name, :park_code, :description, :url, :latitude, :longitude, :state, :email, :phone, :fax, :directions, :directions_url, :weather, :created_at, :updated_at
json.url park_url(park, format: :json)
