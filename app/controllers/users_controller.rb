class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only:[:new, :create]

  def new
  end

  def create
  end

  def dashboard
    @user = current_user
    @bookings = current_user.bookings
  end
end
