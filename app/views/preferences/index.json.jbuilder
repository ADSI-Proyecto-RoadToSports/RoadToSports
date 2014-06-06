json.array!(@preferences) do |preference|
  json.extract! preference, :id, :name, :description, :type_preference_id, :session_id
  json.url preference_url(preference, format: :json)
end
