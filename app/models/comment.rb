class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :cafe
  attribute :score, :integer
  self.table_name = 'comments'
  
  def active_for_authentication?
    super && (is_deleted == false)
  end
end
