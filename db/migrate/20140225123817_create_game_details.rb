class CreateGameDetails < ActiveRecord::Migration
  def change
    create_table :game_details do |t|
      t.belongs_to :game, index: true
      t.belongs_to :question, index: true
      t.belongs_to :status, index: true

      t.timestamps
    end
  end
end
