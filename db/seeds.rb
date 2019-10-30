# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create users

# for i in 1..10
#     user = User.create(
#         account_type: 1,
#         name: Faker::Name.name,
#         email: Faker::Internet.email,
#         mobile: "04#{rand(0..9)}#{rand(0..9)} #{rand(100..999)} #{rand(100..999)}",
#         password: "123123"

#     )
# end

# create sellers

# for i in 1..10
#     seller = Seller.create(
#         user_id: i,
#         company_name: Faker::Company.name,
#         ABN: Faker::Company.australian_business_number
#     )
# end

#create addresses

for i in 1..10
    address = Address.create(
        user_id: i,
        street: "#{rand(1..388)} #{Faker::Address.street_name}",
        suburb: Faker::Address.city, 
        state: ["NSW", "VIC", "QLD", "TAS", "SA", "NT"].sample,
        postcode: rand(2000..4000)
    )


end




# brands = [
#     { name: "Hilti"},
#     { name: "Makita"},
#     { name: "Bosch"},
#     { name: "Dewalt"},
#     { name: "AEG"},
#     { name: "Milwaukii"},
#     { name: "Panasonic"},
#     { name: "Lucius Fox"},
# ]

# for i in brands
# Brand.create(i)
# end

# products = [
#     { title: "Miter Saw"},
#     { title: "Table Saw"},
#     { title: "Cordless Drill"},
#     { title: "Reciprocating Saw"},
#     { title: "Circular Saw"},
#     { title: "Jigsaw"},
#     { title: "Random Orbital Sander"},
#     { title: "Paint Sprayer"},
#     { title: "Air Compressor"},
#     { title: "Hammer Drill"},
#     { title: "Wood Router"}
# ]

#create products

# for i in 1..30
#     product = Product.create(
#         title: "#{products.sample[:title]} #{Faker::Games::LeagueOfLegends.champion}",
#         brand_id: rand(1..9),
#         description: Faker::Lorem.paragraph,
#         price: rand(50000..100000),
#         state: rand(0..1), 
#         user_id: 1
#     )
# end