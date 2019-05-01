class Author < ApplicationRecord
  has_many :publisheds
  has_many :books, through: :publisheds

  validates :name, presence: true, uniqueness: true
  validates :birth_year, presence: true, length: { is: 4 }
end
