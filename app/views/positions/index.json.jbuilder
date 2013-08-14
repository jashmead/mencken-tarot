json.array!(@positions) do |position|
  json.extract! position, :position_order, :position_x, :position_y, :meaning_normal, :meaning_reversed
  json.url position_url(position, format: :json)
end
