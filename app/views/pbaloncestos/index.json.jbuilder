json.array!(@pbaloncestos) do |pbaloncesto|
  json.extract! pbaloncesto, :id, :equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id
  json.url pbaloncesto_url(pbaloncesto, format: :json)
end
