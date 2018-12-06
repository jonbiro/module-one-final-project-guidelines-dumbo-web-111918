def user_ingredients(tty_user)
  tty_user.ingredients.sort
end

def all_ingredients_all_recipes
  Recipe.all.collect do |recipeObj|
    recipeObj.ingredients.to_a
  end
end

def find_overlap(tty_user)
  overlap = []

  all_ingredients_all_recipes.each do |ingList|
    overlap << (ingList & user_ingredients(tty_user))
  end
  overlap
end

def compare_overlap(tty_user)

  recipe_matches = []

  find_overlap(tty_user).each do |ovrlapArr|
    all_ingredients_all_recipes.each do |ingList|
      # binding.pry
      if ovrlapArr == ingList
        recipe_matches << ingList
      # end
      # if a123 == a1234
      #   recipe_matches << ovrlapArr
      # else
      #   return "no match"
      end
    end
  end

  recipe_matches

end

def select_matching_recipes

  recipe_returns = []

  compare_overlap($nuser).each do |ovrlapArr|
    # puts "The overlapp array is #{ovrlapArr}"
    Recipe.all.each do |rcpObj|
      # puts "  The recipe getting checked is #{rcpObj}."
      # binding.pry
      if rcpObj.ingredients == ovrlapArr
        recipe_returns << rcpObj.name
      end
    end
  end

  recipe_returns.uniq
end
