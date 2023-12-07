class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @powerbank = Powerbank.find(params[:powerbank_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.powerbank = @powerbank
    @reservation.user = current_user
    @reservation.save!
    redirect_to powerbank_path(@powerbank)
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(params[:reservation])
    @reservation.save
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.update(validated: true)
    redirect_to powerbank_reservation_path(@reservation)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to profile_path, status: :see_other
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :powerbank_id)
  end
end
