require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

def user_ingredients(tty_user)
  tty_user.ingredients.sort
end

def all_ingredients_all_recipes
  Recipe.all.collect(&:ingredients)
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
      recipe_matches << ingList if ovrlapArr == ingList
    end
  end
  recipe_matches
  end

def select_matching_recipes(tty_user)
  recipe_returns = []
  compare_overlap(tty_user).each do |ovrlapArr|
    Recipe.all.each do |rcpObj|
      recipe_returns << rcpObj.name if rcpObj.ingredients == ovrlapArr
    end
  end
  recipe_returns
end
