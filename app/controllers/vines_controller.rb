class VinesController < ApplicationController

  skip_before_action :authenticate_user!, only:[:index, :show]


  def index
    @vines = Vine.all
  end

  def show
    @vine = Vine.find(params[:id])
    @booking = Booking.new
  end

  def new
    @vine = Vine.new
  end

  def create
    @vine = Vine.new(vine_params)
    @vine.user = current_user
    if @vine.save
      redirect_to vine_path(@vine)
    else
      render :new
    end
  end

  private

  def vine_params
    params.require(:vine).permit(:name, :description, :picture, :price, :location, :variety)
  end
end
