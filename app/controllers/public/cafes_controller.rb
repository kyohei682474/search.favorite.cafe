class Public::CafesController < ApplicationController


  def index
      @cafes = Cafe.all

  end
  def show
      @cafe = Cafe.find(params[:id])
      @customer = current_customer
      @comment = current_customer.comments.new  #カフェ詳細画面でコメントを行うので、formのパラメータ用にCommentオブジェクトを取得
  end

end