json.array!(@type_informations) do |type_information|
  json.extract! type_information, :id, :name, :description
  json.url type_information_url(type_information, format: :json)
end
