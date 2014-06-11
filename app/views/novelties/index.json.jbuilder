json.array!(@novelties) do |novelty|
  json.extract! novelty, :id, :name, :description, :newtype_id
  json.url novelty_url(novelty, format: :json)
end
