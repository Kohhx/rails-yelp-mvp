# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying restaurant db..."
Restaurant.destroy_all

puts "Seeding restuarant..."
category = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do |_|
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::Company.russian_tax_number, category: category.sample)

  puts "seeding restaurant #{restaurant.id}"
end
