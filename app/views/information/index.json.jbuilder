json.array!(@information) do |information|
  json.extract! information, :id, :description, :state, :type_information_id
  json.url information_url(information, format: :json)
end
