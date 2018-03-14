class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only:[:new, :create]

  def new
  end

  def create
  end

  def dashboard
    @bookings_client = current_user.bookings
    @vines = current_user.vines
  end
end
