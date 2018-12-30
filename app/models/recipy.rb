class Recipy < ActiveRecord::Base
  has_many :meals
  has_many :ingredients, through: :meals
  has_one_attached :avatar
end