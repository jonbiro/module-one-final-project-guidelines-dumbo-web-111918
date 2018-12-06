class User < ActiveRecord::Base

  has_many :user_ingredients
  has_many :ingredients, through: :user_ingredients
  has_many :recipe_ingredients, through: :ingredients
  has_many :recipes, through: :recipe_ingredients
<<<<<<< HEAD
=======

>>>>>>> d9f96315c842c19ce97a9fe2463579581654eba9
end
