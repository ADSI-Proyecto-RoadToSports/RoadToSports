json.array!(@type_tournaments) do |type_tournament|
  json.extract! type_tournament, :id, :name, :description
  json.url type_tournament_url(type_tournament, format: :json)
end
