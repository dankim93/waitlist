class UpdateDiner < ActiveRecord::Migration[5.0]
  def change
    add_column :diners, :table_id, :integer
  end
end
