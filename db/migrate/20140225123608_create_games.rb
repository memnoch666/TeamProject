class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :user, index: true
      t.belongs_to :game_type, index: true
      t.boolean :completed

      t.timestamps
    end
  end
end
