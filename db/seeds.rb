# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(name: "Albert", email: "albert@gmail.com", password: "albertdu13", phone_number: "0658301628")
User.create(name: "Lou", email: "lou@gmail.com", password: "loudu13", phone_number: "0658858538")

Powerbank.create(title: "Métro chargeur", adress: "21 rue Haxo", description: "5 chargeur disponible", price: 5, user_id: 1)
