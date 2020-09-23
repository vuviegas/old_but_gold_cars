# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

6.times do
  Car.create!(brand: Faker::Vehicle.manufacture, model: Faker::Vehicle.model, color: Faker::Vehicle.color, year: Faker::Vehicle.year, description: Faker::Vehicle.standard_specs, price: rand(10000..30000), user_id: 1)
end
