class Public::CommentsController < ApplicationController
    before_action :set_cafe   #@cafeを共通認識として使用する

  def create
    @comment = @cafe.comments.build(comment_params)
    @comment.customer = current_customer

    if @comment.save
      redirect_to cafe_path(@cafe), notice: "コメントが投稿されました。"
    else
      redirect_to cafe_path(@cafe), alert: "コメントの投稿に失敗しました。"
    end
  end

  private

  def set_cafe
    @cafe = Cafe.find(params[:cafe_id])
  end

  def comment_params
    params.require(:comment).permit(:content,)
  end
end
