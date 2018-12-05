class User < ActiveRecord::Base
  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  has_many :recipe_ingredients, through: :ingredients
  has_many :recipes, through: :recipe_ingredients
end
