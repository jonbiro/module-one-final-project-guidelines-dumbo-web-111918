require 'tty-prompt'
require 'pry'

$nuser = nil
def welcome
  system 'clear'
  puts "What can I cook?"
  puts " "
  puts " "
end

def username
  puts "What's your name?"
  username = gets.chomp
  if username == "Stephen"
    puts "Please don't break our app. Go away Stephen. Just kidding. But seriously...

    "
  elsif username == "Steve"
    puts "Please don't break our app. Go away Stephen. Just kidding. But seriously...

    "
  elsif username == "steve"
    puts "Please don't break our app. Go away Stephen. Just kidding. But seriously...

    "
  elsif username == "stephen"
    puts "Please don't break our app. Go away Stephen. Just kidding. But seriously...

    "
  elsif username == "Steven"
    puts "Please don't break our app. Go away Stephen. Just kidding. But seriously...

    "
  else
    puts "Hi #{username}"
    $nuser = User.create(name: username)
    new_user
  end
end

def username1
  puts "What's your name again?"
  username = gets.chomp
  $nuser = User.find_by(name: username)
end
# def user_exists(username)
#   exist = User.find_by(name: username)
#   !!exist
# end

def new_user
  system 'clear'
  prompt = TTY::Prompt.new
  # User.create(name: name)
  puts "use SPACEBAR to select the ingredients you have and Press ENTER when done."
  ingred = Ingredient.all.map { |ingredient| ingredient.name}
  options = prompt.multi_select("Pick the ingredients you have:", ingred, per_page: 20)
  if options.empty?
    puts "Please select at least one ingredient.

    "
  else
    # UserIngredient.destroy_all
    # RecipeIngredient.destroy_all
    options.each do |ing|

      if(UserIngredient.where(user: $nuser, ingredient: Ingredient.find_by(name: ing)).size > 0)
        $nuser.ingredients.destroy_all
        UserIngredient.create(user: $nuser, ingredient: Ingredient.find_by(name: ing))
      else
        UserIngredient.create(user: $nuser, ingredient: Ingredient.find_by(name: ing))
      end
    end
  end
  recipe_return
  returning_user1
end

def recipe_return
  if select_matching_recipes.length < 1
    puts "You don't have enough ingredients to make anything. Maybe it's time to go shopping.

    "
  else
    puts "Yummy! You can make:"
    select_matching_recipes.each_with_index {|x,index|puts "#{index+1}. #{x}"}
  end
end






# def name_call
#   $nuser
# end

def test_list

  puts "Here is your list of ingredients:"
  $nuser.ingredients.collect do |x|
    puts "#{x.name}"
  end
end

def returning_user
  username1
  $option = TTY::Prompt.new.select( "What would you like to do?") do |menu|
    menu.choice 'List Your Inventory', 1
    menu.choice 'Edit Your Ingredients', 2
    menu.choice 'View Your Recipes', 3
    menu.choice 'Exit', 4
    end



    case $option
    when 1

      test_list
      returning_user1

    when 2
      new_user
      returning_user1

    when 3
      # binding.pry
      recipe_return
      returning_user1
    when 4
      puts "Goodbye!!!!!!!!!!!!"

      exit
    end
end

def returning_user1

  $option = TTY::Prompt.new.select( "What would you like to do?") do |menu|
    menu.choice 'List Your Inventory', 1
    menu.choice 'Edit Your Ingredients', 2
    menu.choice 'View Your Recipes', 3
    menu.choice 'Exit', 4
    end



    case $option
    when 1

      test_list
      returning_user1

    when 2
      new_user
      returning_user1

    when 3
      # binding.pry
      recipe_return
      returning_user1
    when 4
      puts "Goodbye!!!!!!!!!!!!"

      exit
    end
end
