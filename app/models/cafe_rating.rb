class CafeRating < ApplicationRecord
  belongs_to :cafe
  belongs_to :customer
end