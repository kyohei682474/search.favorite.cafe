class Public::CafesController < ApplicationController
require_relative '../application_controller'

  def top 
     @cafes = Cafe.all
  end
  
  def index
      @cafes = Cafe.all

  end
  def show
      @cafe = Cafe.find(params[:id])
      @customer = current_customer
      @comment = Comment.new


  end

end