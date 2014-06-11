json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :modalitiestype_id, :state, :date, :typetournament_id, :acceptance_id
  json.url tournament_url(tournament, format: :json)
end
