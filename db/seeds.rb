# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cat = Cat.new(
#   name: "Hawaii",
#   description: "Super cat",
#   breed: "Tropical",
#   performance: "depend of the food",
#   price_per_day: 10,
#   status: "available"
# )
# cat.save
user1 = User.create(email:"seb@gmail.com", password:"123456")

Cat.create(name: "Hawaii",description: "Super cat",breed: "Tropical",performance: "depend of the food",price_per_day: 10,status: "available", user: user1)
Cat.create(name: "Miaou",description: "clever cat",breed: "European",performance: "very high",price_per_day: 5,status: "not available" , user: user1)
Cat.create(name: "pouf",description: "Super cat",breed: "Tropical",performance: "depend of the food",price_per_day: 10,status: "available", user: user1)
Cat.create(name: "riri",description: "clever cat",breed: "European",performance: "very high",price_per_day: 5,status: "not available" , user: user1)
Cat.create(name: "Paf",description: "Super cat",breed: "Tropical",performance: "depend of the food",price_per_day: 10,status: "available", user: user1)
Cat.create(name: "chouchou",description: "clever cat",breed: "European",performance: "very high",price_per_day: 5,status: "not available" , user: user1)
Cat.create(name: "Mimi",description: "Super cat",breed: "Tropical",performance: "depend of the food",price_per_day: 10,status: "available", user: user1)
Cat.create(name: "Birdy",description: "clever cat",breed: "European",performance: "very high",price_per_day: 5,status: "not available" , user: user1)

