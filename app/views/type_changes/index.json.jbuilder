json.array!(@type_changes) do |type_change|
  json.extract! type_change, :id, :name, :description
  json.url type_change_url(type_change, format: :json)
end
