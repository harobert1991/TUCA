# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
StepTool.destroy_all
Recipe.destroy_all
Category.destroy_all
Tool.destroy_all
Step.destroy_all


puts 'Creating categories...'
asian = Category.create!(name: 'asian', photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg")
vegetarian = Category.create!(name: 'vegetarian', photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg")

puts 'Creating recipes...'
donburi = Recipe.create!(name: 'Donburi', description: "Fresh donburi made with love", prep_time: 10, cooking_time: 20, category: asian, photo:"http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg" )
veg_lasagna = Recipe.create!(name: 'Vegetarian lasagna', description: "Healthy lasagna made with natural ingredients", prep_time: 15, cooking_time: 30, category: vegetarian, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg")

puts 'Creating steps...'
s1 = Step.create!(sequence: 1, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Cook the potatoes", step_time: 15, recipe: donburi)
Step.create!(sequence: 2, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Cut the onions", step_time: 2, recipe: donburi)
Step.create!(sequence: 3, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Cook the meatballs", step_time: 15, recipe: donburi)
Step.create!(sequence: 4, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Cook the chicory", step_time: 5, recipe: donburi)
Step.create!(sequence: 1, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "This is the first step of the veg_lasagna recipe", step_time: 10, recipe: veg_lasagna)
Step.create!(sequence: 2, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "This is the second step of the veg_lasagna recipe", step_time: 15, recipe: veg_lasagna)

puts 'Creating tools...'
knife = Tool.create!(name: 'knife', icon: "flaticon-knife")
pot = Tool.create!(name: 'pot', icon: "flaticon-pot")

puts 'Creating Steptools...'
StepTool.create!(step: s1, tool: knife)
StepTool.create!(step: s1, tool: pot)


puts 'Finished!'
