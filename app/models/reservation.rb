class Reservation < ApplicationRecord
  attr_accessor :start_time, :end_time

  belongs_to :user
  belongs_to :powerbank

  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_adress?
end
