json.array!(@rules) do |rule|
  json.extract! rule, :id, :name, :description, :state, :type_rule_id
  json.url rule_url(rule, format: :json)
end
