class CreateGameTypes < ActiveRecord::Migration
  def change
    create_table :game_types do |t|
      t.string :title
      t.integer :max_score

      t.timestamps
    end
  end
end
