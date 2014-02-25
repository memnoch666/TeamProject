class CreateGameMoves < ActiveRecord::Migration
  def change
    create_table :game_move do |t|
      t.integer :game_type_id
      t.string :description
      t.string :code

      t.timestamps
    end
  end
end
