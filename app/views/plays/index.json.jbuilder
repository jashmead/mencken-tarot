json.array!(@plays) do |play|
  json.extract! play, :play_order, :play_normal, :play_tags, :play_text
  json.url play_url(play, format: :json)
end
