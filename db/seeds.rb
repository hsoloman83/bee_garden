# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#   Character.create(name: 'Luke', movie: movies.first)
Flower.create(name: "Rose", color: "red", pollen_capacity: 3)
Flower.create(name: "Lisianthus", color: "white", pollen_capacity: 7)
Flower.create(name: "Peonies", color: "pink", pollen_capacity: 6)
Flower.create(name: "Lily", color: "white", pollen_capacity: 10)

Hive.create(name:"Forest Hive" , honey_type: "heater honey")
Hive.create(name:"Meadow Hive" , honey_type: "wildflower honey")
Hive.create(name:"Jungle Hive" , honey_type: "manuka honey")

Bee.create(name:"Honey", category: "forager bee", queen: true, hive_id: 1)
Bee.create(name:"Britney", category: "forager bee", queen: true, hive_id: 3)
Bee.create(name:"Abdul", category: "house bee", queen: true, hive_id: 1)
Bee.create(name:"Lisa", category: "builder bee", queen: true, hive_id: 2)
Bee.create(name:"Tom", category: "cleaner bee", queen: true, hive_id: 2)
Bee.create(name:"Tim", category: "cleaner bee", queen: true, hive_id: 1)
