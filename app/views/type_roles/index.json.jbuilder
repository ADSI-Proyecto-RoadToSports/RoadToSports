json.array!(@type_roles) do |type_role|
  json.extract! type_role, :id, :name, :description
  json.url type_role_url(type_role, format: :json)
end
