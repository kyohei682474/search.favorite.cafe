class Public::CafeRatingCommentsController < ApplicationController
    def create
    @cafe = Cafe.find(params[:cafe_rating_comment_form][:cafe_id])
    @form = CafeRatingCommentForm.new(cafe_rating_comment_params)
    @customer = current_customer
    

   if @form.save
      flash[:success] = 'コメントと評価が投稿されました'
      redirect_to @cafe
   else
      flash.now[:error] = 'コメントと評価の投稿に失敗しました'
      render 'public/cafes/show'
   end
    end

  private

  def cafe_rating_comment_params
    params.require(:cafe_rating_comment_form).permit(:cafe_id, :customer_id, :comment_content, :rating_score)
  end
end
