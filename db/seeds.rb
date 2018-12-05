require_relative "../config/environment.rb"

User.destroy_all
UserIngredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all

#users
thompson = User.create(name: "Thompson")
jonathan = User.create(name: "Jonathan")
eric = User.create(name: "Eric")
kevin = User.create(name: "Kevin")


#ingredients
macaroni = Ingredient.create(name: "macaroni")
lettuce = Ingredient.create(name: "lettuce")
tomato = Ingredient.create(name: "tomato")
ground_beef = Ingredient.create(name: "ground beef")
noodles = Ingredient.create(name: "noodles")
bread = Ingredient.create(name: "bread")
cheese = Ingredient.create(name: "cheese")
cut_up_steak = Ingredient.create(name: "cut up steak")

#Recipes
mac_and_cheese = Recipe.create(name: "macaroni and cheese" )
cheeseburger = Recipe.create(name: "cheeseburger")
hamburger = Recipe.create(name: "hamburger")
beefaroni = Recipe.create(name: "beefaroni")
bulgogi = Recipe.create(name: "bulgogi")

# Recipes Ingredients
mac_and_cheese.ingredients << cheese
mac_and_cheese.ingredients << macaroni
bulgogi.ingredients << cut_up_steak
bulgogi.ingredients << lettuce
cheeseburger.ingredients << cheese
cheeseburger.ingredients << ground_beef
cheeseburger.ingredients << lettuce
cheeseburger.ingredients << tomato
cheeseburger.ingredients << bread
hamburger.ingredients << ground_beef
hamburger.ingredients << bread
hamburger.ingredients << lettuce
hamburger.ingredients << tomato
beefaroni.ingredients << cheese
beefaroni.ingredients << macaroni
beefaroni.ingredients << ground_beef



#user_ingredients
kevin.ingredients << cheese
kevin.ingredients << macaroni
kevin.ingredients << noodles
eric.ingredients << macaroni
eric.ingredients << lettuce
eric.ingredients << tomato
eric.ingredients << ground_beef
eric.ingredients << noodles
eric.ingredients << bread
eric.ingredients << cheese
eric.ingredients << cut_up_steak



#after using ingredient, remove from inventory
