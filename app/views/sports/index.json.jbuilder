json.array!(@sports) do |sport|
  json.extract! sport, :id, :name, :description, :modalitie_id, :rule_id
  json.url sport_url(sport, format: :json)
end
