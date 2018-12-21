class Recipy < ActiveRecord::Base
  has_many :meals
  has_many :ingredients, through: :meals
end