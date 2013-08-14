json.array!(@readings) do |reading|
  json.extract! reading, :name, :description
  json.url reading_url(reading, format: :json)
end
