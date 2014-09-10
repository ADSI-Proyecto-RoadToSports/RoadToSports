json.array!(@participantes) do |participante|
  json.extract! participante, :id, :nombre, :email, :document_type_id, :documento, :estado, :sports_id
  json.url participante_url(participante, format: :json)
end
