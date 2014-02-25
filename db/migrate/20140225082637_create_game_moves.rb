class CreateGameMoves < ActiveRecord::Migration
  def change
    create_table :game_moves do |t|
      t.text :description
      t.text :code
      t.belongs_to :game_type, index: true

      t.timestamps
    end
  end
end
