class Cafe < ApplicationRecord
    has_many :reviews
    has_many :posts
    has_many :comments
    has_many :cafe_ratings
    self.table_name = 'cafes'
    
    def average_scoreing
        comments.average(:score)
    end
end
