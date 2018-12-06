<<<<<<< HEAD
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
=======
# Add seed data here. Seed your database with `rake db:seed`

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
UserIngredient.destroy_all
RecipeIngredient.destroy_all

User.create(name: 'Thompson')
User.create(name: 'Jonathan')
User.create(name: 'Eric')
kevin = User.create(name: 'Kevin')
macaroni = Ingredient.create(name: 'macaroni')
lettuce = Ingredient.create(name: 'lettuce')
tomato = Ingredient.create(name: 'tomato')
ground_beef = Ingredient.create(name: 'ground beef')
noodles = Ingredient.create(name: 'noodles')
bread = Ingredient.create(name: 'bread')
cheese = Ingredient.create(name: 'cheese')
thin_beef = Ingredient.create(name: 'thin sliced beef')
lamb = Ingredient.create(name: 'lamb')
carrot = Ingredient.create(name: 'carrot')
mint_jelly = Ingredient.create(name: 'mint jelly')
milk = Ingredient.create(name: 'milk')
eggs = Ingredient.create(name: 'eggs')
sugar = Ingredient.create(name: 'sugar')

mac_and_cheese = Recipe.create(name: 'macaroni and cheese')
cheeseburger = Recipe.create(name: 'cheeseburger')
hamburger = Recipe.create(name: 'hamburger')
beefaroni = Recipe.create(name: 'beefaroni')
bulgogi = Recipe.create(name: 'bulgogi')
lamb_chops = Recipe.create(name: 'lamb chops')

kevin.ingredients << macaroni
kevin.ingredients << cheese
kevin.ingredients << ground_beef
kevin.ingredients << lettuce
kevin.ingredients << mint_jelly

mac_and_cheese.ingredients << cheese
mac_and_cheese.ingredients << macaroni

>>>>>>> d9f96315c842c19ce97a9fe2463579581654eba9
cheeseburger.ingredients << ground_beef
cheeseburger.ingredients << lettuce
cheeseburger.ingredients << tomato
cheeseburger.ingredients << bread
<<<<<<< HEAD
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
=======
cheeseburger.ingredients << cheese

hamburger.ingredients << ground_beef
hamburger.ingredients << lettuce
hamburger.ingredients << tomato
hamburger.ingredients << bread

beefaroni.ingredients << macaroni
beefaroni.ingredients << ground_beef
beefaroni.ingredients << cheese

lamb_chops.ingredients << lamb
lamb_chops.ingredients << mint_jelly

#
# kevin.ingredients << cheese
# kevin.ingredients << macaroni
# kevin.ingredients << noodles
>>>>>>> d9f96315c842c19ce97a9fe2463579581654eba9
