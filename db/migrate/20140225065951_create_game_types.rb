class CreateGameTypes < ActiveRecord::Migration
  def change
    create_table :game_types do |t|
      t.string :title, :null => false
      t.integer :max_score, :null => false

      t.timestamps
    end
  end
end
