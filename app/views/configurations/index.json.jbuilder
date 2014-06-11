json.array!(@configurations) do |configuration|
  json.extract! configuration, :id, :name, :description, :typeconfiguration_id, :user_id
  json.url configuration_url(configuration, format: :json)
end
