class Ingredient < ApplicationRecord::Base
  has_many :meals
  has_many :recipies, through: :meals
end