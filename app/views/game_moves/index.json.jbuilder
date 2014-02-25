json.array!(@game_moves) do |game_move|
  json.extract! game_move, :id, :game_type_id, :description, :code
  json.url game_move_url(game_move, format: :json)
end
