json.array!(@type_rules) do |type_rule|
  json.extract! type_rule, :id, :name, :description
  json.url type_rule_url(type_rule, format: :json)
end
