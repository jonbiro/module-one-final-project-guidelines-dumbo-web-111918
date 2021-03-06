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
cream = Ingredient.create(name: 'cream')
onion = Ingredient.create(name: 'onion')
flour = Ingredient.create(name: 'flour')
yeast = Ingredient.create(name: 'yeast')

mac_and_cheese = Recipe.create(name: 'macaroni and cheese')
cheeseburger = Recipe.create(name: 'cheeseburger')
hamburger = Recipe.create(name: 'hamburger')
beefaroni = Recipe.create(name: 'beefaroni')
bulgogi = Recipe.create(name: 'bulgogi')
lamb_chops = Recipe.create(name: 'lamb chops')

cheese_pizza = Recipe.create(name: 'cheese pizza')
cheese_pizza.ingredients << tomato
cheese_pizza.ingredients << flour
cheese_pizza.ingredients << cheese
cheese_pizza.ingredients << yeast

bread_recipe = Recipe.create(name: 'bread')
bread_recipe.ingredients << yeast
bread_recipe.ingredients << flour


spaghetti_and_meatballs = Recipe.create(name: 'spaghetti and meatballs')
spaghetti_and_meatballs.ingredients << tomato
spaghetti_and_meatballs.ingredients << noodles
spaghetti_and_meatballs.ingredients << ground_beef

osso_bucco = Recipe.create(name: 'osso bucco')
osso_bucco.ingredients << tomato
osso_bucco.ingredients << carrot
osso_bucco.ingredients << lamb

ice_cream = Recipe.create(name: 'ice cream')
ice_cream.ingredients << cream
ice_cream.ingredients << eggs
ice_cream.ingredients << milk
ice_cream.ingredients << sugar

cheese_steak_sandwich = Recipe.create(name: 'cheese steak sandwich')
cheese_steak_sandwich.ingredients << bread
cheese_steak_sandwich.ingredients << thin_beef
cheese_steak_sandwich.ingredients << cheese
cheese_steak_sandwich.ingredients << onion

cake = Recipe.create(name: 'cake')
cake.ingredients << flour
cake.ingredients << eggs
cake.ingredients << milk
cake.ingredients << sugar

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
