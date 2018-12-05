require 'tty-prompt'

def welcome
  system 'clear'
  puts "What can I cook?"
end

def username
  puts "What's your name?"
  username = gets.chomp
  puts "Hi #{username}"
end

# def user_exists(username)
#   exist = User.find_by(name: username)
#   !!exist
# end

def new_user
  # User.create(name: name)
  puts "use SPACEBAR to select the ingredients you have and Press ENTER when done."
  prompt = TTY::Prompt.new
  ingred = Ingredient.all.map { |ingredient| ingredient.name}
  options = prompt.multi_select(" ", ingred)
  if options.empty?
    puts "Please select at least one ingredient."
  else
    Ingredient.create(name: name)
    options.each do |ing|
      User.find_by(name: name)
      Ingredient.find_by(name: ing)
    end
  end
end

def menu
  prompt = TTY::Prompt.new
  prompt.select("Let's see your options") do |menu|
    #menu.enum '.'
    menu.choice 'What can I make to eat?', 1
    menu.choice 'Create or edit ingredient inventory', 2
    menu.choice 'See my ingredients', 3
    menu.choice 'Exit', 4
  end
end

def delegate(choice)
  case choice
  when 1
    puts "Here are your options to make with those ingredients"
  when 2
    puts "choose your ingredients"
  when 3
    puts "Here is what you have"
  when 4
    puts "Goodbye"
  end

end


# prompt = TTY::Prompt.new
# prompt.ask('What is your name?', default: ENV['USER'])
#
# choices = %w(cheese meat bread butter)
# prompt.multi_select("Select with spacebar the food you have", choices)
