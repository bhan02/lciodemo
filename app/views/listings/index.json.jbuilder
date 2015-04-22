json.array!(@listings) do |listing|
  json.extract! listing, :id, :listing_name, :description, :price
  json.url listing_url(listing, format: :json)
end
