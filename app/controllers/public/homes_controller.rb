class Public::HomesController < ApplicationController

    def top
        @cafes = Cafe.all

    end
end
