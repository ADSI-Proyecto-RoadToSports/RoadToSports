json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :modalities, :state, :date, :type_tournament_id, :acceptance_id
  json.url tournament_url(tournament, format: :json)
end
