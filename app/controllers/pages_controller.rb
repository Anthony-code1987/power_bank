class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :profile

  # def profile
  #   @powerbank = Powerbank.find(params[:id])
  # end
end
