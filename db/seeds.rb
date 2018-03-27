# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Recipe.destroy_all
Category.destroy_all

puts 'Creating categories...'
asian = Category.create!(name: 'asian', photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg")
vegetarian = Category.create!(name: 'vegetarian', photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg")

puts 'Creating recipes...'
Recipe.create!(name: 'Donburi', description: "Fresh donburi made with love", prep_time: 10, cooking_time: 20, category: asian, photo:"http://res.cloudinary.com/dqsodpjur/image/upload/v1522147213/po2tdf0b727h1swcpas3.jpg" )
Recipe.create!(name: 'Vegetarian lasagna', description: "Healthy lasagna made with natural ingredients", prep_time: 15, cooking_time: 30, category: vegetarian, photo: "http://res.cloudinary.com/dqsodpjur/image/upload/v1522144043/r1egdekahnrrrhs7nezh.jpg")
puts 'Finished!'
