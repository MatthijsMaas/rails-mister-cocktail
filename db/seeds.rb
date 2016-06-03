# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all


8.times do
  name = Faker::Hipster.words(2).join(" ")
  Cocktail.create(name: name)
end


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "highland whisky")
Ingredient.create(name: "uranium-238")
Ingredient.create(name: "one ring")
Ingredient.create(name: "ginger")
Ingredient.create(name: "sparkles")
Ingredient.create(name: "ice cube")
Ingredient.create(name: "straw")
Ingredient.create(name: "umbrella")
Ingredient.create(name: "state secrets")


