class Public::HomesController < ApplicationController

    def top
        @cafes = Cafe.all.limit(1)
        @cafe = Cafe.find_by(id: params[:cafe_id])

    end
end
