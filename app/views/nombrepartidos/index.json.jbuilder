json.array!(@nombrepartidos) do |nombrepartido|
  json.extract! nombrepartido, :id, :nombre
  json.url nombrepartido_url(nombrepartido, format: :json)
end
