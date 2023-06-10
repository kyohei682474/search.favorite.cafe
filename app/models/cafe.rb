class Cafe < ApplicationRecord
    has_many :reviews
    has_many :posts

    self.table_name = 'cafes'
end
