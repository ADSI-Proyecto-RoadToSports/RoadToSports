json.array!(@acceptances) do |acceptance|
  json.extract! acceptance, :id, :description, :user_id
  json.url acceptance_url(acceptance, format: :json)
end
