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
        render :new
       end


   end

   def destroy

   end

   def facility_params
     params.require(:facility).permit(:name)
   end

end
