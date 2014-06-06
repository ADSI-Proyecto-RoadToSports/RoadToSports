json.array!(@pre_registrations) do |pre_registration|
  json.extract! pre_registration, :id, :name, :modalities, :description, :user_id, :tournament_id, :acceptance_id
  json.url pre_registration_url(pre_registration, format: :json)
end
