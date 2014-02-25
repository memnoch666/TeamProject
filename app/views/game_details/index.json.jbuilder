json.array!(@game_details) do |game_detail|
  json.extract! game_detail, :id, :game_id, :question_id, :status_id
  json.url game_detail_url(game_detail, format: :json)
end
