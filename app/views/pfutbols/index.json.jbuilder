json.array!(@pfutbols) do |pfutbol|
  json.extract! pfutbol, :id, :equipo1, :puntos2, :gano1, :equipo2, :puntos2, :gano2, :fecha, :estado, :user_id
  json.url pfutbol_url(pfutbol, format: :json)
end
