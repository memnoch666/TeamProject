json.array!(@questions) do |question|
  json.extract! question, :id, :title, :scenario, :answer, :game_type_id, :game_move_id, :level_id
  json.url question_url(question, format: :json)
end
