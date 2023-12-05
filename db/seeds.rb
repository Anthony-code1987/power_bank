# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)

#   end
require 'faker'

Powerbank.destroy_all
User.destroy_all

user1 = User.create!(name: "Albert", email: "albert@gmail.com", password: "azerty", phone_number: "0600000000")
user2 = User.create!(name: "Lou", email: "lou@gmail.com", password: "azerty", phone_number: "06000000000")
user3 = User.create!(name: "Lila", email: "lila@gmail.com", password: "azerty", phone_number: "06000000000")

20.times do
  Powerbank.create(
    title: Faker::Name.name,
    adress: Faker::Address.full_address,
    description: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    user: user1
  )
end

20.times do
  Powerbank.create(
    title: Faker::Name.name,
    adress: Faker::Address.full_address,
    description: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    user: user2
  )
end

20.times do
  Powerbank.create(
    title: Faker::Name.name,
    adress: Faker::Address.full_address,
    description: Faker::Commerce.product_name,
    price: Faker::Commerce.price,
    user: user3
  )
end
