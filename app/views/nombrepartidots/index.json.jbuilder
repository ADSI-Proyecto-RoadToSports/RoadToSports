json.array!(@nombrepartidots) do |nombrepartidot|
  json.extract! nombrepartidot, :id, :nombre
  json.url nombrepartidot_url(nombrepartidot, format: :json)
end
