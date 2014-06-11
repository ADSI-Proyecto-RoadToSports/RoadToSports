json.array!(@scores) do |score|
  json.extract! score, :id, :description, :datescore, :modalitie_id, :team_id
  json.url score_url(score, format: :json)
end
