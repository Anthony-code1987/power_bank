class PowerbanksController < ApplicationController
  before_action :set_powerbank, only: %i[show edit update destroy]
  def show
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

  def edit
  end

  def update
    @powerbank.update(powerbank_params)
    redirect_to powerbank_path(@powerbank)
  end

  def destroy
    @powerbank.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def powerbank_params
    params.require(:powerbank).permit(:title, :adress, :description, :price)
  end

  def set_powerbank
    @powerbank = Powerbank.find(params[:id])
  end
end
