json.array!(@constituents) do |constituent|
  json.extract! constituent, :id, :name, :lastname, :identification, :birthday, :mail, :address, :phone, :gender
  json.url constituent_url(constituent, format: :json)
end
