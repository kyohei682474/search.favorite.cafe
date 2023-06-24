class Admin::CafesController < ApplicationController
    def index
        @cafes = Cafe.all


    end

    def new
        @cafe = Cafe.new
        @faci
    end

    def create

      @cafe = Cafe.new(cafe_params)
      geocode_result = Geocoder.search(@cafe.address).first
      if geocode_result.present?
            @cafe.latitude = geocode_result.latitude
            @cafe.longitude = geocode_result.longitude
      else
            # 住所から緯度経度が取得できない場合、デフォルト値を設定する
            @cafe.latitude = 0.0
            @cafe.longitude = 0.0
      end

      if @cafe.save
          redirect_to admin_cafes_path, notice: "カフェが登録されました。"
      else
          render :new
      end

    end





    def show
        @cafe = Cafe.find(params[:id])
    end




    def edit
         @cafe = Cafe.find(params[:id])
    end

    def update
     cafe = Cafe.find(params[:id])
     cafe.update(cafe_params)
     redirect_to  admin_cafe_path(cafe.id)
    end

    def destroy
        cafe = Cafe.find(params[:id])  # データ（レコード）を1件取得
        cafe.destroy  # データ（レコード）を削除
        redirect_to admin_cafes_path  # 投稿一覧画面へリダイレクト

    end

     private

  def cafe_params
    params.require(:cafe).permit(:name, :address, :business_hours,:cafe_id,:facility_ids)
  end

end
