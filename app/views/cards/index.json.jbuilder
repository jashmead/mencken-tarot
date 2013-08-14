json.array!(@cards) do |card|
  json.extract! card, :name, :major_arcana, :suit, :description, :tags_plus, :tags_minus, :text_forward, :text_reversed, :deck_id, :card_image_upright, :card_image_reversed, :card_thumbnail
  json.url card_url(card, format: :json)
end
