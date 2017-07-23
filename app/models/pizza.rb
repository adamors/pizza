class Pizza < ApplicationRecord
  has_many :pizza_ingredients
  has_many :ingredients, through: :pizza_ingredients
  has_many :pizza_toppings
  has_many :toppings, through: :pizza_toppings
  has_many :reviews
end
