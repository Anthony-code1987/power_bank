class PowerbanksController < ApplicationController
  def show
    @powerbank = Powerbank.find(params[:id])
  end

end
