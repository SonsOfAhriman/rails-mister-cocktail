# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "tomato juice")
Ingredient.create(name: "tequila")
Ingredient.create(name: "vodka")
Ingredient.create(name: "soju")

file = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1886&q=80')

one = Cocktail.create(name: "mojito")

one.photo.attach(io: file, filename: 'cocktail', content_type: 'image/jpeg')

one.save

file_two = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1886&q=80')

two = Cocktail.create(name: "bloody mary")

two.photo.attach(io: file_two, filename: 'cocktail', content_type: 'image/jpeg')

two.save

file_three = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1886&q=80')

three = Cocktail.create(name: "margarita")

three.photo.attach(io: file_three, filename: 'cocktail', content_type: 'image/jpeg')

three.save

Dose.create(description: "6 leaves", cocktail_id: 1, ingredient_id: 3)

Dose.create(description: "a little vodka", cocktail_id: 1, ingredient_id: 6)

Dose.create(description: "some ice", cocktail_id: 1, ingredient_id: 2)

Dose.create(description: "some tomato juice", cocktail_id: 2, ingredient_id: 4)

Dose.create(description: "add some vodka", cocktail_id: 2, ingredient_id: 6)

Dose.create(description: "add some tequila", cocktail_id: 3, ingredient_id: 5)

Dose.create(description: "add some ice", cocktail_id: 3, ingredient_id: 2)
