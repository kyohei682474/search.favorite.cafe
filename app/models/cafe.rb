class Cafe < ApplicationRecord

    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_and_belongs_to_many :facilities
    self.table_name = 'cafes'

 def average_scoreing
  average_score = comments.average(:score)
  if average_score.present?
    rounded_average = average_score.round(1) # 少数第1位で四捨五入
    rounded_average
  else
    3.0 # もしくは適切な初期値を設定する
  end
 end
end
