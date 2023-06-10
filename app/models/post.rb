class Post < ApplicationRecord
  belongs_to :customer
  belongs_to :cafe

  validates :content, presence: true
end