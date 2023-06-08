class Review < ApplicationRecord
　belongs_to :cafe
  belongs_to :customer

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :comment, presence: true, length: { maximum: 500 }
end

