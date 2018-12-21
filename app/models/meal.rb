class Meal < ActiveRecord::Base
  belongs_to :recipy
  belongs_to :ingredient
end