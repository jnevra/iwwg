json.extract! listing, :id, :bisnis_name, :alamat, :phone_n, :url, :created_at, :updated_at
json.url listing_url(listing, format: :json)
