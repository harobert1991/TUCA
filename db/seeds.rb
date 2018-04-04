# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'


UserIngredient.destroy_all
Cart.destroy_all
StepTool.destroy_all
Recipe.destroy_all
Category.destroy_all
Tool.destroy_all
Step.destroy_all



puts 'Creating categories...'

traditional = Category.create!(name: 'Traditional', photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522849730/TUCA STEPS/asparagus-steak-veal-steak-veal-361184.jpg")
vegetarian = Category.create!(name: 'Vegetarian', photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522849595/TUCA STEPS/vegetables-vegetable-basket-harvest-garden.jpg")
world = Category.create!(name: 'World', photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522849264/TUCA STEPS/pexels-photo-913879.jpg")

puts 'Creating recipes...'

meatballs = Recipe.create!(name: 'Meatballs with chicory puree', description: "Fresh meatballs made with love", prep_time: 12, cooking_time: 35, category: traditional, photo:"https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,q_80,w_auto:100:1280/v1/hellofresh_s3/image/andijviestamppot-met-gehaktballetjes-1374b75b.jpg" )
shrimp = Recipe.create!(name: 'Curry shrimp linguine ', description: "Topped with zuchinis and peppers", prep_time: 30, cooking_time: 10, category: world, photo:"https://res.cloudinary.com/dqsodpjur/image/upload/v1522835266/TUCA STEPS/Tuca-18.jpg" )
penne_bolo = Recipe.create!(name: 'Penne, bolognaise aux lentilles', description: "Avec de la roquette et graines de courges", prep_time: 15, cooking_time: 10, category: vegetarian, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,q_80,w_auto:100:1280/v1/hellofresh_s3/image/598c1e4aa2882a7f736776c5-fb27751c.jpg")

puts 'Creating steps...'

sd1 =Step.create!(sequence: 1, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835257/TUCA STEPS/pexels-photo-545013.jpg", description: "Start by washing your hands", step_time: "1", recipe: shrimp )
sd2 =Step.create!(sequence: 2, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522836179/TUCA STEPS/pexels-photo-679454.jpg", description: "Take the shrimp out and let them defrost.", step_time: "2", recipe: shrimp)
sd3 =Step.create!(sequence: 3, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835259/TUCA STEPS/Tuca-1.jpg", description: "Gather all the ingredients", step_time: "2", recipe: shrimp)
sd4 =Step.create!(sequence: 4, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522836471/TUCA STEPS/P1020906.jpg", description: "Peel the onion", step_time: "3", recipe: shrimp)
sd5 =Step.create!(sequence: 5, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835258/TUCA STEPS/Tuca-4.jpg", description: "Cut the onion into slices, then again into dices.", step_time: "5", recipe: shrimp)
sd6 =Step.create!(sequence: 6, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835259/TUCA STEPS/Tuca-6.jpg", description: "Grab  pan, add a table spoon of olive oil to it. Turn it to medium heat.", step_time: "2", recipe: shrimp)
sd7 =Step.create!(sequence: 7, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835261/TUCA STEPS/Tuca-7.jpg", description: "Add the onions dices to the pan (Keep an eye on them so they don't burn.)", step_time: "2", recipe: shrimp)
sd8 =Step.create!(sequence: 8, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835262/TUCA STEPS/Tuca-8.jpg", description: "Cut the pepper into halves, then remove the inside as shown above. Continue by cutting them into slices then in dices. Set them aside in a bowl/container.", step_time: "5", recipe: shrimp)
sd9 =Step.create!(sequence: 9, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835263/TUCA STEPS/Tuca-13.jpg", description: "Peel the zuchinis. Start by cutting both, then slice them with a peeler as shown above.", step_time: "5", recipe: shrimp)
sd10 =Step.create!(sequence: 10, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835261/TUCA STEPS/Tuca-10.jpg", description: "Take the onions off the heat and set them aside", step_time: "2", recipe: shrimp)
sd11 =Step.create!(sequence: 11, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835259/TUCA STEPS/Tuca-3.jpg", description: "Add a large volume of water in a pot, put it on the stove on high and cover it.", step_time: "3", recipe: shrimp)
sd12 =Step.create!(sequence: 12, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835259/TUCA STEPS/Tuca-6.jpg", description: "Grab the pan, add a table spoon of olive oil to it. Turn it to medium heat.", step_time: "3", recipe: shrimp)
sd13 =Step.create!(sequence: 13, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522838029/TUCA STEPS/P1020944.jpg", description: "Add the peppers to the pan and let it cook on medium heat", step_time: "4", recipe: shrimp)
sd14 =Step.create!(sequence: 14, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835264/TUCA STEPS/Tuca-14.jpg", description: "Peel and cut the garlic clove into small pieces", step_time: "4", recipe: shrimp)
sd15 =Step.create!(sequence: 15, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522835261/TUCA STEPS/Tuca-10.jpg", description: "Once the peppers are cooked, add them to the bowl with the onions.", step_time: "1", recipe: shrimp)
sd16 =Step.create!(sequence: 16, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522838868/TUCA STEPS/P1020991.jpg", description: "Add salt the the boiling water", step_time: "1", recipe: shrimp)
sd17 =Step.create!(sequence: 17, photo: "https://res.cloudinary.com/dqsodpjur/image/upload/v1522838978/TUCA STEPS/P1020994.jpg", description: "Put the pasta in the boiling water and put the lid back on", step_time: "1", recipe: shrimp)

s1 =Step.create!(sequence: 1, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-40a3602a.jpg", description: "Portez une grande quantité d'eau à ébullition dans la casserole. Lavez ou épluchez les pommes de terre, découpez-les en gros morceaux et faites-les cuire 15 minutes à couvert. Egouttez en conservant un peu d'eau de cuisson et réservez sans couvercle.", step_time: "15", recipe: meatballs)
s2 =Step.create!(sequence: 2, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-11836ea6.jpg", description: "Pendant ce temps, taillez l'oignon rouge en demi-rondeleles et détaillez les tomates séchées.", step_time: "2", recipe: meatballs)
s3 =Step.create!(sequence: 3, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-c8394689.jpg", description: "Faites chauffer la moitié du beurre dans la poêle et faites-y dorer les boulettes sur tous les côtés 3 à 4 minutes à feu moyen-vif. Ajoutez l'oignon rouge et le vinaigre balsamique noir, puis remuez 1 minute. Baissez le feu, couvrez la poêle et poursuivez la cuisson 10 minutes ou jusqu'à ce que les boulettes soient cuites.", step_time: "15", recipe: meatballs)
s4 =Step.create!(sequence: 4, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-820f243b.jpg", description: "Pendant ce temps, faites chauffer le reste du beurre dans le wok ou la sauteuse et faites-y cuire la majeure partie de la chicorée 5 minutes à feu moyen.", step_time: "5", recipe: meatballs)
s5 =Step.create!(sequence: 5, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-7f5b8b11.jpg", description: "Ecrasez les pommes de terre au presse-purée pour en faire une purée épaisse. Pour plus d'onctuosité, ajoutez éventuellement un filet de lait ou d'eau de cuisson. Incorporez la chicorée cuite et crue à la purée, puis ajoutez le fromage et les tomates séchées. Salez et poivrez.", step_time: "5", recipe: meatballs)
s6 =Step.create!(sequence: 6, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/5a6096f92c3e083d805b33c2/step-ce6db6a3.jpg", description: "Servez la purée de chicorée sur les assiettes et garnissez avec l'oignon rouge. Accompagnez des boulettes et arrosez-les du jus de viande de la poêle.", step_time: "5", recipe: meatballs)

st1 = Step.create!(sequence: 1, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-b26deeba.jpg", description:"Pour les pennes, portez 2L d'eau à ébullition dans une casserole. Emincez l'oignon et écrasez l'ail. Coupez les tomates cerises en deux. Égouttez les lentilles dans une passoire.", step_time: "10", recipe: penne_bolo)
st2 = Step.create!(sequence: 2, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-bd29d357.jpg", description:"Faites chauffer le wok ou la sauteuse à feu vif et grillez-y les graines de courge à sec jusqu’à ce qu’elles commencent à sauter. Ensuite, réservez.", step_time: "10", recipe: penne_bolo)
st3 = Step.create!(sequence: 3, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-fb60188e.jpg", description:"Faites chauffer l’huile d’olive dans le même wok et faites-y revenir l’oignon et l’ail 2 minutes à feu doux. Ajoutez l’origan et le concentré de tomates, puis poursuivez la cuisson 5 minutes. Versez ensuite 100 ml d’eau par personne, émincez ¼ de cube de bouillon par personne au-dessus du wok, puis ajoutez la cassonade et la moitié du vinaigre balsamique noir. Couvrez et laissez mijoter 10 minutes. Ajoutez les tomates cerises à mi-cuisson.", step_time: "5", recipe: penne_bolo)
st4 = Step.create!(sequence: 4, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-e30a55ff.jpg", description:"Pendant ce temps, faites cuire les penne 10 à 12 minutes à couvert. Ensuite, égouttez. Ajoutez le mélange de petits pois, de lentilles et de maïs au wok contenant la sauce, mélangez bien et laissez mijoter 1 minute de plus.", step_time: "10", recipe: penne_bolo)
st5 = Step.create!(sequence: 5, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-90160046.jpg", description:"Pendant ce temps, mélangez l’huile d’olive vierge extra et le reste de vinaigre balsamique noir dans le bol pour obtenir une vinaigrette. Salez et poivrez avant de la manger à la roquette. Émiettez la moitié de la feta au-dessus du wok et laissez-la fondre. Ajoutez enfin les penne à la sauce, puis salez et poivrez.", step_time: "10", recipe: penne_bolo)
st6 = Step.create!(sequence: 6, photo: "https://res.cloudinary.com/hellofresh/image/upload/f_auto,fl_lossy,h_400,q_80/v1/hellofresh_s3/598c1e4aa2882a7f736776c5/step-160c35ef.jpg", description:"Servez le plat sur les assiettes, émiettez le reste de feta par-dessus et parsemez de graines de courge. Accompagnez le tout de la roquette.", step_time: "10", recipe: penne_bolo)


puts 'Creating doses...'

Dose.create!(ingredient: "Pasta linguine", quantity: 500, unit:"g", step: sd16 )
Dose.create!(ingredient: "Onion", quantity: 1, unit:"pc", step: sd4 )
Dose.create!(ingredient: "Shrimps", quantity: 500, unit:"g", step: sd2 )
Dose.create!(ingredient: "Olive oil", quantity: 1, unit:"tbsp", step: sd3 )
Dose.create!(ingredient: "Red pepper", quantity: 1, unit:"pc", step: sd8 )
Dose.create!(ingredient: "Zuchini", quantity: 1, unit:"pc", step: sd9 )

Dose.create!(ingredient: "Potato", quantity: 600, unit:"g", step: s1 )
Dose.create!(ingredient: "Red onion", quantity: 1, unit:"pc", step: s2 )
Dose.create!(ingredient: "Dried tomatoes", quantity: 60, unit:"g", step: s2 )
Dose.create!(ingredient: "Beef meatballs", quantity: 6, unit:"pc", step: s3 )
Dose.create!(ingredient: "Butter", quantity: 2, unit:"t.s.", step: s3 )
Dose.create!(ingredient: "Balsamic vinegar", quantity: 2, unit:"t.s.", step: s3 )
Dose.create!(ingredient: "Chicory", quantity: 300, unit:"g", step: s4 )
Dose.create!(ingredient: "Cheese", quantity: 50, unit:"g", step: s5 )
Dose.create!(ingredient: "Milk", unit:"t.y.o.t", step: s5 )
Dose.create!(ingredient: "Pepper", unit:"t.y.o.t", step: s5 )
Dose.create!(ingredient: "Salt", unit:"t.y.o.t", step: s5 )


Dose.create!(ingredient: "Oignon", quantity: 1, unit:"pc", step: st1 )
Dose.create!(ingredient: "Tomates cerises", quantity: 250, unit:"g", step: st1 )
Dose.create!(ingredient: "Graines de potiron", quantity: 20, unit:"g", step: st2 )
Dose.create!(ingredient: "Penne complètes", quantity: 180, unit:"g", step: st4 )
Dose.create!(ingredient: "Gousse d’ail", quantity: 2, unit:"pc", step: st1 )
Dose.create!(ingredient: "Pois chiches", quantity: 250, unit:"g.", step: st1 )
Dose.create!(ingredient: "Roquette", quantity: 40, unit:"g", step: st5 )
Dose.create!(ingredient: "Feta", quantity: 100, unit:"g", step: st6 )
Dose.create!(ingredient: "Huile d'olive", quantity: 1, unit:"cs", step: st3 )
Dose.create!(ingredient: "Sucre Brun", quantity: 1, unit:"cs", step: st3 )
Dose.create!(ingredient: "Vinaigre balsamique", quantity: 1, unit:"cs", step: st3 )
Dose.create!(ingredient: "Salt & Pepper", unit:"selon votre goût", step: st5 )
Dose.create!(ingredient: "Concentré de tomates", quantity: 1, unit:"boîte", step: st5 )

puts 'Creating tools...'

knife = Tool.create!(name: 'knife', icon: 'knife-2.svg')
pot = Tool.create!(name: 'pot', icon: 'pot.svg')
pot1 = Tool.create!(name: 'pot-1', icon: 'pot-1.svg')
pan = Tool.create!(name: 'pan', icon: 'pan.svg')
dish = Tool.create!(name: 'dish', icon: 'dish.svg')
cutlery = Tool.create!(name: 'cutlery', icon: 'cutlery.svg')
tenderizer = Tool.create!(name: 'tenderizer', icon: 'tenderizer.svg')
strainer = Tool.create!(name: 'strainer', icon: 'strainer.svg')
spoon = Tool.create!(name: 'spoon', icon: 'spoon.svg')
bowl = Tool.create!(name: 'bowl', icon: 'bowl.svg')


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

StepTool.create!(step: st1, tool: knife)
StepTool.create!(step: st1, tool: pot)
StepTool.create!(step: st1, tool: strainer)
StepTool.create!(step: st2, tool: pan)
StepTool.create!(step: st2, tool: spoon)
StepTool.create!(step: st3, tool: pan)
StepTool.create!(step: st3, tool: spoon)
StepTool.create!(step: st4, tool: pan)
StepTool.create!(step: st5, tool: pan)
StepTool.create!(step: st5, tool: bowl)
StepTool.create!(step: st6, tool: cutlery)




puts 'Finished!'


