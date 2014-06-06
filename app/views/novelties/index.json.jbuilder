json.array!(@novelties) do |novelty|
  json.extract! novelty, :id, :name, :description, :new_type_id
  json.url novelty_url(novelty, format: :json)
end
