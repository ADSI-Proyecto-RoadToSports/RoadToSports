json.array!(@pvoleibols) do |pvoleibol|
  json.extract! pvoleibol, :id, :equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id
  json.url pvoleibol_url(pvoleibol, format: :json)
end
