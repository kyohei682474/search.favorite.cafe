class Admin::CafesController < ApplicationController
    def index
    end

    def new
        @cafe = Cafe.new
    end

    def create
          @cafe = Cafe.new(cafe_params)
        if @cafe.save
     　　 redirect_to @cafe, notice: "カフェが登録されました。"
        else
          render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

     private

  def cafe_params
    params.require(:cafe).permit(:name, :address, :business_hours, :rate)
  end

end
