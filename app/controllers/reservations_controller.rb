class ReservationsController < ApplicationController
  def create
    @powerbank = Powerbank.find(params[:powerbank_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.powerbank = @powerbank
    @reservation.save
    redirect_to powerbank_path(@powerbank)
  end

  def update

  end

  def destroy

  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :powerbank_id)
  end
end
