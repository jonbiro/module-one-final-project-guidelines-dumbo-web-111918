# Add seed data here. Seed your database with `rake db:seed`

User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
UserIngredient.destroy_all
RecipeIngredient.destroy_all

User.create(name: "Thompson")
User.create(name: "Jonathan")
User.create(name: "Eric")
kevin = User.create(name: "Kevin")
macaroni = Ingredient.create(name: "macaroni")
lettuce = Ingredient.create(name: "lettuce")
tomato = Ingredient.create(name: "tomato")
ground_beef = Ingredient.create(name: "ground beef")
noodles = Ingredient.create(name: "noodles")
bread = Ingredient.create(name: "bread")
cheese = Ingredient.create(name: "cheese")
thin_beef = Ingredient.create(name: "thin sliced beef")
mac_and_cheese = Recipe.create(name: "macaroni and cheese")
cheeseburger = Recipe.create(name: "cheeseburger")
hamburger = Recipe.create(name: "hamburger")
beefaroni = Recipe.create(name: "beefaroni")
bulgogi = Recipe.create(name: "bulgogi")


kevin.ingredients << macaroni
kevin.ingredients << cheese
kevin.ingredients << ground_beef


mac_and_cheese.ingredients << cheese
mac_and_cheese.ingredients << macaroni

cheeseburger.ingredients << ground_beef
cheeseburger.ingredients << lettuce
cheeseburger.ingredients << tomato
cheeseburger.ingredients << bread
cheeseburger.ingredients << cheese

hamburger.ingredients << ground_beef
hamburger.ingredients << lettuce
hamburger.ingredients << tomato
hamburger.ingredients << bread

beefaroni.ingredients << macaroni
beefaroni.ingredients << ground_beef
beefaroni.ingredients << cheese





#
# kevin.ingredients << cheese
# kevin.ingredients << macaroni
# kevin.ingredients << noodles
