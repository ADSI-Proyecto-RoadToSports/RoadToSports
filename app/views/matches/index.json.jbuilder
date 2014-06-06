json.array!(@matches) do |match|
  json.extract! match, :id, :team_a, :team_b, :modalitie_id, :tournament_id, :score_id, :fch_lg_match_id
  json.url match_url(match, format: :json)
end
