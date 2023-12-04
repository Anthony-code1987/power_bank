class PowerbanksController < ApplicationController
  def show
    @powerbank = Powerbank.find(params[:id])
  end

  def new
    @powerbank = Powerbank.new
  end

  def create
    @powerbank = Powerbank.new(powerbank_params)
    @powerbank.user = current_user
    if @powerbank.save!
      redirect_to powerbank_path(@powerbank)
    else
      render :new
    end

  end

  private

  def powerbank_params
    params.require(:powerbank).permit(:title, :adress, :description, :price)
  end

end
