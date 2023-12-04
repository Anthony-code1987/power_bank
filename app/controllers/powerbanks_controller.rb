class PowerbanksController < ApplicationController
  def index
    @powerbanks = Powerbank.all
  end
end
