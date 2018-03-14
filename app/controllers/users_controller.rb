class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only:[:new, :create]

  def new
  end

  def create
  end

  def dashboard
    @bookings = current_user.bookings
  end
end
