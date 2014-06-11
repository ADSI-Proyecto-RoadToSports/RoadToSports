json.array!(@users) do |user|
  json.extract! user, :id, :name, :apellido, :identification, :birthday, :mail, :password, :address, :phone, :gender, :picture, :documenttype_id
  json.url user_url(user, format: :json)
end
