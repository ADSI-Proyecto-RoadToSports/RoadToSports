json.array!(@pajedrezs) do |pajedrez|
  json.extract! pajedrez, :id, :participante1, :puntos1, :participante2, :puntos2, :tournament_id, :fecha, :estado, :user_id
  json.url pajedrez_url(pajedrez, format: :json)
end
