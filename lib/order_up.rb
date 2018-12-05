tty_user = User.find_by(name: 'Kevin')
# accept value of tty name
def user_ingredients(tty_user)
  tty_user.ingredients.sort
end

# tty_user.ingredients

# returns an array of arrays
def all_ingredients_all_recipes
  Recipe.all.collect(&:ingredients)
end

# compares list of user's ingredients to each array of a recipe's ingredients
def find_overlap(tty_user)
  overlap = []

  all_ingredients_all_recipes.each do |ingList|
    overlap << ingList & user_ingredients(tty_user)
  end
  overlap
end

#   Recipe.all.select do |recipe|
#     recipe.ingredients.sort == user_ingredients(tty_user)
#   end
# end

# if [array of recipe_ingredients].sort & [array of user_ingredients].sort == [array of recipe_ingredients].sort

Recipe.all.each(&:ingredients)

# take ingredients and compare them with the

# compare user's ingredients to all recipes and return overlap in array

# produce scrollable array, which, if selected, returns the ingredients
# and a short description
