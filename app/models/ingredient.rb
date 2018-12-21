class Ingredient < ActiveRecord::Base
  has_many :meals
  has_many :recipies, through: :meals
end