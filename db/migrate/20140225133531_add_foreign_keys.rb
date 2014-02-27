class AddForeignKeys < ActiveRecord::Migration
  def change
  	add_foreign_key(:game_moves, :game_types)
  	add_foreign_key(:questions, :game_types)
  	add_foreign_key(:questions, :levels)
  	add_foreign_key(:questions, :game_moves)
  	add_foreign_key(:games, :game_types)
  	add_foreign_key(:games, :users)
  	add_foreign_key(:levels, :game_types)
  	add_foreign_key(:game_details, :games)
  	add_foreign_key(:game_details, :questions)
  	add_foreign_key(:game_details, :statuses)
  end
end
