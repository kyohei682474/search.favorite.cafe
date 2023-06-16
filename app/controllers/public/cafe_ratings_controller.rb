require 'cafe_rating'
class Public::CafeRatingsController < ApplicationController
    def create
    @cafe_rating = ::CafeRating.new(cafe_rating_params)

     if @cafe_rating.save
      # 保存が成功した場合の処理
      flash[:success] = '評価が保存されました'
     else
      # 保存が失敗した場合の処理
      flash[:error] = '評価の保存に失敗しました'
     end

     　redirect_to  cafes_path
    end

  private

    def cafe_rating_params
     params.require(:cafe_rating).permit(:cafe_id, :score, :customer_id)
    end
end
