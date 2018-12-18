class Ingredient < ApplicationRecord
  has_many :meals
  has_many :recipies, through: :meals
end