json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :state, :description
  json.url activity_url(activity, format: :json)
end
