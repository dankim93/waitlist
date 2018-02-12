class Diner < ApplicationRecord
  belongs_to(:table,
              foreign_key: :table_id,
              class_name: 'Table')
end
