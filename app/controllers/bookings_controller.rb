class BookingsController < ApplicationController
  def index
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.vine = Vine.find(params[:vine_id])
    @booking.user = current_user
    if @booking.save
      flash[:notice] = "Le vigneron va confirmer votre demande"
      @booking.status = "En attente"
      @booking.save
      redirect_to dashboard_path
    else
      flash[:alert] = "Impossible d'adopter ce pied de vigne"
      render "vines/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at)
  end

end
