class Table < ApplicationRecord
  has_one :diner, :dependent => :destroy
end
