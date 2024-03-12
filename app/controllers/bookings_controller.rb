class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  def index
    def index
      @bookings = Booking.all
      # Ou une logique plus complexe pour récupérer les réservations à afficher dans l'index
    end
  end

  def update
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
  @booking.user = user
  if @booking.save
    redirect_to root_path, notice: 'Votre superpouvoir a bien été réservé'
  else
    flash.now[:alert] = 'Nous avons rencontré un problème avec la réservation de votre pouvoir'
    render :new
  end

  def destroy
    def destroy
      @booking.destroy
      redirect_to root_path, notice: 'Nous avons bien pris en compte la suppression de votre réservation'
     end
  end
end

Private
 # Méthode pour sécuriser les paramètres de réservation
 def booking_params
  params.require(:booking).permit(:superpower_id, :start_date, :end_date)
 end

 # Méthode pour récupérer la réservation à modifier ou à supprimer
 def set_booking
  @booking = Booking.find(params[:id])
 end
