json.array!(@decks) do |deck|
  json.extract! deck, :name, :summary, :description, :cloned_from_id, :person_id, :deck_status
  json.url deck_url(deck, format: :json)
end
