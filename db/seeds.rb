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

meatballs = Recipe.create!(name: 'Meatballs with chicory puree', description: "Fresh meatballs made with love", prep_time: 12, cooking_time: 35, category: asian, photo:"http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg" )
veg_lasagna = Recipe.create!(name: 'Vegetarian lasagna', description: "Healthy lasagna made with natural ingredients", prep_time: 15, cooking_time: 30, category: vegetarian, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg")

puts 'Creating steps...'

s1 =Step.create!(sequence: 1, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Cook the potatoes", step_time: 15, recipe: meatballs)
s2 =Step.create!(sequence: 2, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Cut the onions", step_time: 2, recipe: meatballs)
s3 =Step.create!(sequence: 3, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Cook the meatballs", step_time: 15, recipe: meatballs)
s4 =Step.create!(sequence: 4, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Cook the chicory", step_time: 5, recipe: meatballs)
s5 =Step.create!(sequence: 5, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Make the puree and spice it!", step_time: 5, recipe: meatballs)
s6 =Step.create!(sequence: 6, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Serve your delicious meal", step_time: 5, recipe: meatballs)
st1 =Step.create!(sequence: 1, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Step 1", step_time: 10, recipe: veg_lasagna)
st2 =Step.create!(sequence: 2, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Step 2", step_time: 15, recipe: veg_lasagna)

puts 'Creating doses...'

d1 = Dose.create!(ingredient: "Potato", quantity: 600, unit:"g", step: s1 )
d2 = Dose.create!(ingredient: "Red onion", quantity: 1, unit:"pc", step: s2 )
d3 = Dose.create!(ingredient: "Dried tomatoes", quantity: 60, unit:"g", step: s2 )
d4 = Dose.create!(ingredient: "Beef meatballs", quantity: 6, unit:"pc", step: s3 )
d7 = Dose.create!(ingredient: "Butter", quantity: 2, unit:"tea spoons", step: s3 )
d8 = Dose.create!(ingredient: "Balsamic vinegar", quantity: 2, unit:"tea spoons", step: s3 )
d5 = Dose.create!(ingredient: "Chicory", quantity: 300, unit:"g", step: s4 )
d6 = Dose.create!(ingredient: "Cheese cutted in dices", quantity: 50, unit:"g", step: s5 )
d9 = Dose.create!(ingredient: "Milk", unit:"to your own taste", step: s5 )
d10 = Dose.create!(ingredient: "Pepper", unit:"to your own taste", step: s5 )
d11 = Dose.create!(ingredient: "Salt", unit:"to your own taste", step: s5 )

puts 'Creating tools...'

knife = Tool.create!(name: 'knife', icon: 'knife-2.svg')
pot = Tool.create!(name: 'pot', icon: 'pot.svg')

puts 'Creating Steptools...'

StepTool.create!(step: s1, tool: knife)
StepTool.create!(step: s1, tool: pot)

puts 'Finished!'


