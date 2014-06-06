json.array!(@type_configurations) do |type_configuration|
  json.extract! type_configuration, :id, :name, :description
  json.url type_configuration_url(type_configuration, format: :json)
end
