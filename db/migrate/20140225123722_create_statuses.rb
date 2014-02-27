class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :status, :null => false

      t.timestamps
    end
  end
end
