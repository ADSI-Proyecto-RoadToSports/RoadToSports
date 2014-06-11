json.array!(@matches) do |match|
  json.extract! match, :id, :teamA, :teamB, :modalitie_id, :tournament_id, :score_id, :fchlgmatch_id
  json.url match_url(match, format: :json)
end
