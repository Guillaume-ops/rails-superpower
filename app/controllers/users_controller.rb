class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = @user.bookings
    # price_reservation = (booking.date_end - booking.date_begin).abs.to_i * @superpower.price
  end

  def destroy
    @user = Booking.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'Deletion confirmed.'
  end
end
