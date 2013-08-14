json.array!(@spreads) do |spread|
  json.extract! spread, :name, :description, :master_spread
  json.url spread_url(spread, format: :json)
end
