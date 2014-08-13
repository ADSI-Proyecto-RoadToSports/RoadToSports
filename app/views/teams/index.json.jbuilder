json.array!(@teams) do |team|
  json.extract! team, :id, :nombre, :sport_id
  json.url team_url(team, format: :json)
end
