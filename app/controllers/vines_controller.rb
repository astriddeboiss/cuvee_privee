class VinesController < ApplicationController

  skip_before_action :authenticate_user!, only:[:index, :show]

  def index
    @vines = Vine.where.not(latitude: nil, longitude: nil)

    @vines = @vines.where(price: params[:price]) if params[:price]
    @vines = @vines.where(variety: params[:variety]) if params[:variety]

    @markers = @vines.map do |vine|
      {
        lat: vine.latitude,
        lng: vine.longitude,
        infoWindow: { content: render_to_string(partial: "/vines/map_box", locals: { vine: vine }) }
      }
    end
  end

  def show
    @vine = Vine.find(params[:id])
    authorize @vine
    @booking = Booking.new
  end

  def new
    @vine = Vine.new
    authorize @vine
  end

  def create
    @vine = Vine.new(vine_params)
    @vine.user = current_user
    authorize @vine
    if @vine.save
      redirect_to vine_path(@vine)
    else
      render :new
    end
  end

  private

  def vine_params
    params.require(:vine).permit(:name, :description, :picture, :price, :location, :variety, :color)
  end
end
