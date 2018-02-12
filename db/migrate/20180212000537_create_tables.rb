class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.integer "capacity", null: false
      t.integer "diner_id", null: false
      t.timestamps
    end
  end
end
