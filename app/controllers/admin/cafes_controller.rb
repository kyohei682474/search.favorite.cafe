class Admin::CafesController < ApplicationController
    def index
        @cafes = Cafe.all

    end

    def new
        @cafe = Cafe.new
    end

    def create
      default_latitude = 35.6895  # 都市の中心の緯度
      default_longitude = 139.6917  # 都市の中心の経度

      @cafe = Cafe.new(cafe_params)
      @cafe.latitude = default_latitude
      @cafe.longitude = default_longitude
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
    params.require(:cafe).permit(:name, :address, :business_hours, :rate,:cafe_id)
  end

end
