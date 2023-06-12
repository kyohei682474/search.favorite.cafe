class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :cafe

  self.table_name = 'comments'
end
