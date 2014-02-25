json.array!(@game_moves) do |game_move|
  json.extract! game_move, :id, :description, :code, :game_type_id
  json.url game_move_url(game_move, format: :json)
end
