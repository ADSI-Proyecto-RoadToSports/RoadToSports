json.array!(@ptenismesas) do |ptenismesa|
  json.extract! ptenismesa, :id, :participante1, :puntos1, :participante2, :puntos2, :tournament_id, :fecha, :estado, :user_id
  json.url ptenismesa_url(ptenismesa, format: :json)
end
