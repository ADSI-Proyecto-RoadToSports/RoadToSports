json.array!(@rules) do |rule|
  json.extract! rule, :id, :name, :description, :state
  json.url rule_url(rule, format: :json)
end
