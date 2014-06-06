json.array!(@type_preferences) do |type_preference|
  json.extract! type_preference, :id, :name, :description
  json.url type_preference_url(type_preference, format: :json)
end
