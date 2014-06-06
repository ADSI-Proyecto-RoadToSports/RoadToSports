json.array!(@modalities_types) do |modalities_type|
  json.extract! modalities_type, :id, :name, :description
  json.url modalities_type_url(modalities_type, format: :json)
end
