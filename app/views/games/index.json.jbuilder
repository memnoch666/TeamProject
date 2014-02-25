json.array!(@games) do |game|
  json.extract! game, :id, :user_id, :game_type_id, :completed
  json.url game_url(game, format: :json)
end
