class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title, :null => false
      t.text :scenario, :null => false
      t.text :answer, :null => false
      t.belongs_to :game_type, index: true
      t.belongs_to :game_move, index: true
      t.belongs_to :level, index: true

      t.timestamps
    end
  end
end
