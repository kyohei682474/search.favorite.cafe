class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :cafe
  attribute :score, :integer
  self.table_name = 'comments'
end
