json.array!(@nombrepartidods) do |nombrepartidod|
  json.extract! nombrepartidod, :id, :nombre
  json.url nombrepartidod_url(nombrepartidod, format: :json)
end
