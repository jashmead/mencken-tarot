json.array!(@people) do |person|
  json.extract! person, :name, :email, :about_me, :deck_id, :person_status
  json.url person_url(person, format: :json)
end
