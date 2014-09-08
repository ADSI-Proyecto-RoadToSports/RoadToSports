json.array!(@nombrepartidocs) do |nombrepartidoc|
  json.extract! nombrepartidoc, :id, :nombre
  json.url nombrepartidoc_url(nombrepartidoc, format: :json)
end
