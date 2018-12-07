require_relative '../config/environment.rb'
welcome

puts "
"
new_user_list = "New User"
current_user_list = "Existing User"
user = TTY::Prompt.new.select("Hello! Are you a new user or current user?", %w(New_User Current_User Exit))
  if user == "New_User"
    username
    new_user
  elsif user == "Current_User"
    returning_user
  elsif user == "Exit"
    puts "See You Next Time!

    "
    exit
  end




# welcome
# username
# new_user
# recipe_return
