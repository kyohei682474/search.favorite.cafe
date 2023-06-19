require 'cafe_rating'
class Public::CafeRatingsController < ApplicationController

  def create
    @cafe = Cafe.find(params[:cafe_rating][:cafe_id])
    @cafe_rating = @cafe.cafe_ratings.build(cafe_rating_params)
    if @cafe_rating.save
      flash[:success] = '評価が保存されました'
      redirect_to @cafe
    else
      flash.now[:error] = '評価の保存に失敗しました'
      render 'cafes/show'
      return
    end
  end

  private

    def cafe_rating_params
     params.require(:cafe_rating).permit(:cafe_id, :score, :customer_id)
    end
end
