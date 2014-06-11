json.array!(@preferences) do |preference|
  json.extract! preference, :id, :name, :description, :typepreference_id, :session_id
  json.url preference_url(preference, format: :json)
end
