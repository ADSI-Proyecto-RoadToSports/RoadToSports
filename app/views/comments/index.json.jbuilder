json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :question_id
  json.url comment_url(comment, format: :json)
end
