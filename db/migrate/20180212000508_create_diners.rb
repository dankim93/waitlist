class CreateDiners < ActiveRecord::Migration[5.0]
  def change
    create_table :diners do |t|
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :size, null: false
      t.timestamps
    end
  end
end
