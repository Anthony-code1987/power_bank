class PagesController < ApplicationController
  def profile
    @powerbank = current_user.powerbanks
    @reservations = Reservation.where(powerbank_id: @powerbank)
  end
end
