json.array!(@people) do |person|
  json.extract! person, :name, :email, :about_me, :preferences, :person_status
  json.url person_url(person, format: :json)
end
