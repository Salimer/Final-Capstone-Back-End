class User < ApplicationRecord
  has_many :reservations
  has_many :items, through: :reservation
end
