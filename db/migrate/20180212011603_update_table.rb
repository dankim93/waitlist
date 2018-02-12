class UpdateTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :tables, :diner_id
  end
end
