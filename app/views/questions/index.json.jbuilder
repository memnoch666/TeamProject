json.array!(@questions) do |question|
  json.extract! question, :id, :title, :scenario, :answer, :level
  json.url question_url(question, format: :json)
end
