json.array!(@configurations) do |configuration|
  json.extract! configuration, :id, :name, :description, :type_configuration_id, :user_id
  json.url configuration_url(configuration, format: :json)
end
