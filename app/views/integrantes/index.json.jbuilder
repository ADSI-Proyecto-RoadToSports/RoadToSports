json.array!(@integrantes) do |integrante|
  json.extract! integrante, :id, :nombre, :document_type_id, :documento, :ficha, :team_id
  json.url integrante_url(integrante, format: :json)
end
