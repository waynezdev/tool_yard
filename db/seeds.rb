# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

brands = [
    { name: "Hilti"},
    { name: "Makita"},
    { name: "Bosch"},
    { name: "Dewalt"},
    { name: "AEG"},
    { name: "Milwaukii"},
    { name: "Panasonic"},
    { name: "Lucius Fox"},
]

products = [

    { name: "Miter Saw"},
    { name: "Table Saw"},
    { name: "Cordless Drill"},
    { name: "Reciprocating Saw"},
    { name: "Circular Saw"},
    { name: "Jigsaw"},
    { name: "Random Orbital Sander"},
    { name: "Paint Sprayer"},
    { name: "Air Compressor"},
    { name: "Hammer Drill"},
    { name: "Wood Router"}
]

for i in 1..30
    product = Product.create(
        price: rand(50000..100000),
        title: "#{products[:name] Faker::Games::LeagueOfLegends.champion}"
        brand: 
        description: Faker::Lorem.paragraph
    )