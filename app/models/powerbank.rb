class Powerbank < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  geocoded_by :adress
  after_validation :geocode, if: :will_save_change_to_adress?
  has_one_attached :photo
end
