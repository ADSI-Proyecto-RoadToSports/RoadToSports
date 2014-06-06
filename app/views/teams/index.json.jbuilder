json.array!(@teams) do |team|
  json.extract! team, :id, :name, :modalities_id
  json.url team_url(team, format: :json)
end
