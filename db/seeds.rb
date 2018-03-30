# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Cart.destroy_all
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

s1 =Step.create!(sequence: 1, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Portez une grande quantité d'eau à ébullition dans la casserole. Lavez ou épluchez les pommes de terre, découpez-les en gros morceaux et faites-les cuire 15 minutes à couvert. Egouttez en conservant un peu d'eau de cuisson et réservez sans couvercle.", step_time: 15, recipe: meatballs)
s2 =Step.create!(sequence: 2, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Pendant ce temps, taillez l'oignon rouge en demi-rondeleles et détaillez les tomates séchées.", step_time: 2, recipe: meatballs)
s3 =Step.create!(sequence: 3, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg", description: "Faites chauffer la moitié du beurre dans la poêle et faites-y dorer les boulettes sur tous les côtés 3 à 4 minutes à feu moyen-vif. Ajoutez l'oignon rouge et le vinaigre balsamique noir, puis remuez 1 minute. Baissez le feu, couvrez la poêle et poursuivez la cuisson 10 minutes ou jusqu'à ce que les boulettes soient cuites.", step_time: 15, recipe: meatballs)
s4 =Step.create!(sequence: 4, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Pendant ce temps, faites chauffer le reste du beurre dans le wok ou la sauteuse et faites-y cuire la majeure partie de la chicorée 5 minutes à feu moyen.", step_time: 5, recipe: meatballs)
s5 =Step.create!(sequence: 5, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Ecrasez les pommes de terre au presse-purée pour en faire une purée épaisse. Pour plus d'onctuosité, ajoutez éventuellement un filet de lait ou d'eau de cuisson. Incorporez la chicorée cuite et crue à la purée, puis ajoutez le fromage et les tomates séchées. Salez et poivrez.", step_time: 5, recipe: meatballs)
s6 =Step.create!(sequence: 6, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg", description: "Servez la purée de chicorée sur les assiettes et garnissez avec l'oignon rouge. Accompagnez des boulettes et arrosez-les du jus de viande de la poêle.", step_time: 5, recipe: meatballs)
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
pot1 = Tool.create!(name: 'pot-1', icon: 'pot-1.svg')
pan = Tool.create!(name: 'pan', icon: 'pan.svg')
dish = Tool.create!(name: 'dish', icon: 'dish.svg')
cutlery = Tool.create!(name: 'cutlery', icon: 'cutlery.svg')
tenderizer = Tool.create!(name: 'tenderizer', icon: 'tenderizer.svg')

puts 'Creating Steptools...'

StepTool.create!(step: s1, tool: knife)
StepTool.create!(step: s1, tool: pot)
StepTool.create!(step: s2, tool: knife)
StepTool.create!(step: s3, tool: pan)
StepTool.create!(step: s4, tool: pan)
StepTool.create!(step: s5, tool: pot1)
StepTool.create!(step: s5, tool: tenderizer)
StepTool.create!(step: s6, tool: dish)
StepTool.create!(step: s6, tool: cutlery)
puts 'Finished!'


