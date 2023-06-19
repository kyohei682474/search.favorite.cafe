class CafeRatingCommentForm
  include ActiveModel::Model

  attr_accessor :cafe_id, :customer_id, :comment_content, :rating_score

  validates :comment_content, presence: true
  validates :rating_score, presence: true

  def save
    return false unless valid?

    ActiveRecord::Base.transaction do
      cafe = Cafe.find(cafe_id)
      customer = Customer.find(customer_id)
      comment = cafe.comments.create(content: comment_content, customer: customer)
      rating = cafe.cafe_ratings.create(score: rating_score, customer: customer)
    end

    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end