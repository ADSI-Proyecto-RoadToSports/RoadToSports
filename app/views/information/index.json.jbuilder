json.array!(@information) do |information|
  json.extract! information, :id, :description, :state, :typeinformation_id
  json.url information_url(information, format: :json)
end
