class PagesController < ApplicationController
  def profile
    @powerbank = current_user.powerbanks
  end
end
