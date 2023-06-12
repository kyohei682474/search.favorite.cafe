class Cafe < ApplicationRecord
    has_many :reviews
    has_many :posts
    has_many :comments
    self.table_name = 'cafes'
end
