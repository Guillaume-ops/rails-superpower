class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
  end

  def destroy
    @user = Booking.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'Deletion confirmed.'
  end
end
