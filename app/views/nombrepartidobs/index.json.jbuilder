json.array!(@nombrepartidobs) do |nombrepartidob|
  json.extract! nombrepartidob, :id, :nombre
  json.url nombrepartidob_url(nombrepartidob, format: :json)
end
