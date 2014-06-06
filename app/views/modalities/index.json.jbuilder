json.array!(@modalities) do |modality|
  json.extract! modality, :id, :name, :players, :activity_id, :tournament_id, :modalities_type_id
  json.url modality_url(modality, format: :json)
end
