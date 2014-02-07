class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :scenario
      t.string :answer
      t.integer :level

      t.timestamps
    end
  end
end
