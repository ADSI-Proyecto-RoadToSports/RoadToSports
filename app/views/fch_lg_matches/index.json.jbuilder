json.array!(@fch_lg_matches) do |fch_lg_match|
  json.extract! fch_lg_match, :id, :strart_date, :ending_date, :place, :description, :team, :tournament_id
  json.url fch_lg_match_url(fch_lg_match, format: :json)
end
