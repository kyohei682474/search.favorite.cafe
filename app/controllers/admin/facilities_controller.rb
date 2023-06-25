class Admin::FacilitiesController < ApplicationController
   def index
       @facilities = Facility.all
       @facility = Facility.new


   end
   def create
       @facility = Facility.new(facility_params)
       if @facility.save
        redirect_to   admin_facilities_path
       else
         flash.now[:alert] = "設備の登録に失敗しました。"
        redirect_to   admin_facilities_path
       end


   end

   def edit
     @facility = Facility.find(params[:id])
   end

   def update
     facility = Facility.find(params[:id])
     facility.update(facility_params)
     redirect_to admin_facilities_path

   end

   def destroy

   end

   def facility_params
     params.require(:facility).permit(:name)
   end

end
