class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.text :level, :null => false
      t.belongs_to :game_type, index: true

      t.timestamps
    end
  end
end
