json.array!(@nombrepartidoms) do |nombrepartidom|
  json.extract! nombrepartidom, :id, :nombre
  json.url nombrepartidom_url(nombrepartidom, format: :json)
end
