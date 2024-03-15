class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]
  def index
    @bookings = Booking.all
    # Ou une logique plus complexe pour récupérer les réservations à afficher dans l'index
  end

  def update
    if @booking.update(booking_params)
      redirect_to root_path, notice: 'Booking updated successfully!'
    else
      flash.now[:alert] = 'Booking update failed'
      render :edit
    end
  end

  def new
    @booking = Booking.new
    @superpower = Superpower.find(params[:superpower_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @superpower = Superpower.find(params[:superpower_id])
    @booking.superpower = @superpower
    if @booking.save
      redirect_to dashboard_path(current_user), notice: 'Your superpower has been reserved'
    else
      #flash.now[:alert] = 'Nous avons rencontré un problème avec la réservation de votre pouvoir'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path(current_user), notice: 'We have taken into account the deletion of your reservation'
  end

  private

 # Méthode pour sécuriser les paramètres de réservation
  def booking_params
    params.require(:booking).permit(:superpower_id, :date_begin, :date_end)
  end

 # Méthode pour récupérer la réservation à modifier ou à supprimer
  def set_booking
    @booking = Booking.find(params[:id])
  end
end
