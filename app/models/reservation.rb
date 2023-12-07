class Reservation < ApplicationRecord
  attr_accessor :start_time, :end_time

  belongs_to :user
  belongs_to :powerbank
end
