json.array!(@pmicrofutbols) do |pmicrofutbol|
  json.extract! pmicrofutbol, :id, :equipo1, :puntos1, :puntoso1, :equipo2, :puntos2, :puntoso2, :tournament_id, :fecha, :estado, :user_id
  json.url pmicrofutbol_url(pmicrofutbol, format: :json)
end
