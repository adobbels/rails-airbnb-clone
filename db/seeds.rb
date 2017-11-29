 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# require 'faker'
# Examples:
Feature.create!(name: "<i class='fa fa-television' aria-hidden='true'></i>", fontawesome_logo: "<i class='fa fa-television' aria-hidden='true'></i>")
Feature.create!(name: "bed", fontawesome_logo: "<i class='fa fa-bed' aria-hidden='true'></i>")
Feature.create!(name: "wifi", fontawesome_logo: "<i class='fa fa-wifi' aria-hidden='true'></i>")
Feature.create!(name: "user", fontawesome_logo: "<i class='fa fa-users' aria-hidden='true'></i>")
Feature.create!(name: "document", fontawesome_logo: "<i class='fa fa-pencil-square-o' aria-hidden='true'></i>")
Feature.create!(name: "pet", fontawesome_logo: "<i class='fa fa-paw' aria-hidden='true'></i>")




# # Examples:
# 10.times do |flat|
#   Flat.create!(
#     name: Faker::Address.community,
#     description: Faker::MostInterestingManInTheWorld.quote,
#     category: ["Entire house", "Flat", "room"].sample,
#     price: Faker::Number.number(4),
#     capacity: Faker::Number.between(2, 14),
#     address: Faker::Address.street_name,
#     post_code: Faker::Address.postcode,
#     city: Faker::Address.city,
#     photo: nil,
#     profile: nil

#     )

# end
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
