class CreateGameMoves < ActiveRecord::Migration
  def change
    create_table :game_moves do |t|
      t.text :description, :null => false
      t.text :code, :null => false
      t.belongs_to :game_type, index: true

      t.timestamps
    end
  end
end
