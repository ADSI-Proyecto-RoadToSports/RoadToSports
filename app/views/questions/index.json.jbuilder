json.array!(@questions) do |question|
  json.extract! question, :id, :title, :category_id, :descripcion
  json.url question_url(question, format: :json)
end
