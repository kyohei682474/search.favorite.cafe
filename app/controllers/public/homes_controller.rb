class Public::HomesController < ApplicationController

    def top
        @cafes = Cafe.all
        @cafe = Cafe.find_by(id: params[:cafe_id])

    end
end
