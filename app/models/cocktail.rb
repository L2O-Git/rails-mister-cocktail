class Cocktail < ApplicationRecord
  has_many :doses, dependent: :delete_all
  has_many :ingredients, through: :doses, dependent: :delete_all
  validates :name, uniqueness: true, presence: true
end
