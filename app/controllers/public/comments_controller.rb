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

  def destroy

    @comment = @cafe.comments.find(params[:id])
    @comment.destroy  # データ（レコード）を削除
    redirect_to cafe_path(@cafe.id), notice: 'コメントが削除されました。'  # カフェの詳細画面へリダイレクト
  end

  def edit
    @comment =@cafe.comments.find(params[:id])
  end

  def update
     @comment =@cafe.comments.find(params[:id])
     @comment.update(comment_params)
     redirect_to cafe_path(@cafe.id)
  end
  private

  def set_cafe
    @cafe = Cafe.find(params[:cafe_id])
  end

  def comment_params
    params.require(:comment).permit(:content,:cafe_id, :customer_id, :score)
  end
end
