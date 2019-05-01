class Book < ApplicationRecord
  has_many :publisheds
  has_many :authors, through: :publisheds
end
