class User < ApplicationRecord
  has_many :powerbanks
  has_many :reservations
  has_many :powerbanks, through: :reservations
end
