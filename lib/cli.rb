require 'tty-prompt'
require 'pry'

$nuser = nil
# welcome the user to the app
def welcome
  system 'clear'
  puts "What can I cook?"
  puts " "
  puts " "
end

# Called when the user selects "New User" in run.rb
def username
  puts "What's your name?"
  u_name = gets.chomp
  if u_name == "Stephen"
    puts "No Trolls allowed. Goodbye!

    "
  elsif u_name == "Steve"
    puts "No Trolls allowed. Goodbye!

    "
  elsif u_name == "steve"
    puts "No Trolls allowed. Goodbye!

    "
  elsif u_name == "stephen"
    puts "No Trolls allowed. Goodbye!

    "
  elsif u_name == "Steven"
    puts "No Trolls allowed. Goodbye!
    "
  elsif User.find_by(name: u_name)
    puts "Unfortunately, there already appears to be a user with that name. Try entering something else."
    puts " "
    username
  else
    puts "Hi, #{u_name}!"
    $nuser = User.create(name: u_name)
    new_user
  end
end

def user_name_ask
  puts "Enter your name:"
  username = gets.chomp
  if User.find_by(name: username)
    $nuser = User.find_by(name: username)
  else
    puts "Sorry, but that doesn't appear to be an existing user. Please enter a valid username."
    user_name_ask
  end
end

def new_user
  system 'clear'
  prompt = TTY::Prompt.new
  # User.create(name: name)
  puts "use SPACEBAR to select the ingredients you have and Press ENTER when done."
  ingred = Ingredient.all.map { |ingredient| ingredient.name}
  options = prompt.multi_select("Pleast select at least one ingredient to add to your pantry or fridge:", ingred, per_page: 20)
  if options.empty?
    puts "Please select at least one ingredient.

    "
    new_user
  else
    options.each do |ing|
        UserIngredient.create(user: $nuser, ingredient: Ingredient.find_by(name: ing))

    end
  end
  crud_block
end



def recipe_return
  if select_matching_recipes.length < 1
    system 'clear'
    puts "You don't have enough ingredients to make anything. Maybe it's time to go shopping.

    "
  else
    system 'clear'
    puts "Yummy! You can make:"
    select_matching_recipes.each_with_index {|x,index|puts "#{index+1}. #{x}"}
  end
end

def list_user_ingredients
  system 'clear'

  puts "Here is your list of ingredients:"
  $nuser.ingredients.collect do |x|
    puts "#{x.name}"
  end
end

def returning_user
  user_name_ask
  $option = TTY::Prompt.new.select( "What would you like to do?") do |menu|
    menu.choice 'List Your Inventory', 1
    menu.choice 'Edit Your Ingredients', 2
    menu.choice 'View Your Recipes', 3
    menu.choice 'Exit', 4
    end

    case $option
    when 1
      list_user_ingredients
      crud_block
    when 2
      edit_existing
    when 3
      recipe_return
      crud_block
    when 4
      puts "Goodbye!!!! Enjoy Your Meal!"

      exit
    end
end

def crud_block

  $option = TTY::Prompt.new.select( "What would you like to do, #{$nuser.name}?") do |menu|
    menu.choice 'View Inventory', 1
    menu.choice 'Edit Your Ingredients', 2
    menu.choice 'View Your Recipes', 3
    menu.choice 'Exit', 4
    end

    case $option
    when 1
      list_user_ingredients
      crud_block
    when 2
      choose_edit
          when 3
      recipe_return
      crud_block
    when 4
      puts "Goodbye!!!! Enjoy Your Meal!"
      exit
    end
end

def choose_edit
  $option = TTY::Prompt.new.select( "") do |menu|
    menu.choice 'Add to Inventory', 1
    menu.choice 'Remove from Inventory', 2
    menu.choice 'View Inventory', 3
    menu.choice 'Return to Menu',4
    end

  case $option
  when 1
    edit_existing
    choose_edit
  when 2
    remove_existing
    choose_edit
  when 3
    list_user_ingredients
    choose_edit
  when 4
    crud_block
  end
end

def edit_existing
  prompt = TTY::Prompt.new
    puts "use SPACEBAR to select the ingredients you wish to add and Press ENTER when done."
    ingred = Ingredient.all.map { |ingredient| ingredient.name}
    options = prompt.multi_select("Pick the ingredients you would like to use:", ingred, per_page: 20)
    if options.empty?
      puts "Please select at least one ingredient."
      edit_existing
    else
      options.each do |ing|
        $nuser.ingredients << Ingredient.find_by(name: ing) #UserIngredient.create(user: $nuser, ingredient: Ingredient.find_by(name: ing))
      end
    end
    crud_block
end

def remove_existing
  prompt = TTY::Prompt.new
    puts "use SPACEBAR to select the ingredients you wish to add and Press ENTER when done."
    ingred =   $nuser.ingredients.collect { |ingredient| ingredient.name}
    options = prompt.multi_select("Pick the ingredients you would like to remove:", ingred, per_page: 20)
    if options.empty?
      puts "You do not have any ingredients. Returning to menu."
      puts " "
      crud_block
    else
      options.each do |ing|
        $nuser.ingredients.delete(Ingredient.find_by(name: ing)) #UserIngredient.create(user: $nuser, ingredient: Ingredient.find_by(name: ing))
      end
    end
    crud_block

    system 'clear'

    puts "Here is your list of ingredients:"
    $nuser.ingredients.collect do |x|
      puts "#{x.name}"
    end
end
