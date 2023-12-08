class ReservationsController < ApplicationController

  def index
    @reservations = current_user.reservations
    @powerbank = @reservations.map {|reservation| reservation.powerbank }
    @markers = @powerbank.map do |powerbank|
      {
        lat: powerbank.latitude,
        lng: powerbank.longitude,
        info_window2_html: render_to_string(partial: "info_window2", locals: { powerbank: powerbank }),
        marker2_html: render_to_string(partial: "marker2", locals: { powerbank: powerbank })
      }
    end
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @powerbank = Powerbank.find(params[:powerbank_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.powerbank = @powerbank
    @reservation.user = current_user
    if @reservation.save!
    redirect_to reservations_path(@reservation)
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(params[:reservation])
    @reservation.save
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.update(validated: true)
    redirect_to profile_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservation_path, status: :see_other
  end


  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :powerbank_id)
  end
end
