json.array!(@new_types) do |new_type|
  json.extract! new_type, :id, :name, :description
  json.url new_type_url(new_type, format: :json)
end
