class Cafe < ApplicationRecord
    has_many :reviews

    self.table_name = 'cafes'
end
