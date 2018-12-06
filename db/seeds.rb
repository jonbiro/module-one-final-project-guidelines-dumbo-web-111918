require_relative '../config/environment.rb'

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
UserIngredient.destroy_all
RecipeIngredient.destroy_all

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

mac_and_cheese.ingredients << cheese
mac_and_cheese.ingredients << macaroni

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

lamb_chops.ingredients << lamb
lamb_chops.ingredients << mint_jelly

bulgogi.ingredients << thin_beef
bulgogi.ingredients << lettuce
