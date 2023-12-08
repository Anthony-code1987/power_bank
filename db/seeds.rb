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
require "open-uri"

Powerbank.destroy_all
User.destroy_all
Reservation.destroy_all

user1 = User.create!(name: "Albert", email: "albert@gmail.com", password: "azerty", phone_number: "0600000000")
user2 = User.create!(name: "Lou", email: "lou@gmail.com", password: "azerty", phone_number: "06000000000")
user3 = User.create!(name: "Lila", email: "lila@gmail.com", password: "azerty", phone_number: "06000000000")
user4 = User.create!(name: "Eric", email: "eric@gmail.com", password: "azerty", phone_number: "07906424648")

# Powerbank.create!(title: "Powerbank Wagon", adress: "21 Rue Haxo, Marseille", description: "Powerbank very good", price: 10, user: user1)

powerbank1 = Powerbank.create!(title: "Powerbank Wagon", adress: "21 Rue Haxo, Marseille", description: "Very good powerbank", price: 10, user: user1)
powerbank2 = Powerbank.create!(title: "Au Terrasse du Port", adress: "9 Quai du Lazaret Marseille", description: "Power Bank rose 10000mAh Chargeur Portable", price: 9, user: user1)
powerbank3 = Powerbank.create!(title: "Friche Belle de Mai", adress: "41 Rue Jobin, 13003 Marseille", description: "Powerfull Bank  4000mAh Puissance 4", price: 2, user: user1)
powerbank4 = Powerbank.create!(title: "La Bonne-Mère", adress: "Rue Fort du Sanctuaire Marseille", description: "Batterie Externe 27.000mAh, 22,5W PD3.0 QC4.0 ", price: 7, user: user1)

powerbank5 = Powerbank.create!(title: "Château de La Buzine", adress: "56 Trav. de la Buzine, 13011 Marseille", description: "Batterie Externe USB C Power Bank 26800mAh", price: 3, user: user2)
powerbank6 = Powerbank.create!(title: "Centre Commercial Bonneveine", adress: "112 Av. de Hambourg Marseille", description: "AXNEB Batterie Externe 13800mAh, [Ultra Mince mais Puissant]", price: 5, user: user2)
powerbank7 = Powerbank.create!(title: "Centre Commercial Prado", adress: "41 Bd Michelet Marseille", description: "Xiaomi Mi Power Bank 3 20000 mAh 50W Noir", price: 7, user: user2)
powerbank8 = Powerbank.create!(title: "La Valentine", adress: "Route de la Sablière Marseille", description: "Bextoo Batterie Externe 30000mAh", price: 3, user: user2)

powerbank9 = Powerbank.create!(title: "Golf Bastide de La Salette ", adress: "65 Imp. des Vaudrans Marseille", description: "Belkin Batterie externe USB-C 20000mAh", price: 6, user: user3)
powerbank10 = Powerbank.create!(title: "The Red Lion", adress: "231 Av. Pierre Mendès France Marseille", description: "Batterie Externe, 22.5W Power Bank 10000mAh", price: 7, user: user3)
powerbank11 = Powerbank.create!(title: "Emmaüs Pointe Rouge", adress: "110 Trav. Parangon Marseille", description: "22.5W Power Bank 20000mAh", price: 9, user: user3)
powerbank12 = Powerbank.create!(title: "Patinoire Palais Omnisports", adress: "12 Bd Fernand Bonnefoy, 13010 Marseille", description: "22.5W Power Bank 20000mAh", price: 4, user: user3)

powerbank13 = Powerbank.create!(title: "Temple", adress: "56 Av. de la Jarre, 13009 Marseille", description: "Virus Batterie Externe 10000mAh", price: 3, user: user4)
powerbank14 = Powerbank.create!(title: "Cité universitaire Luminy", adress: "171 Av. de Luminy Marseille", description: "Aoguerbe Batterie, 10000mAh Power Bank magnetique sans Fil", price: 7, user: user4)
powerbank15 = Powerbank.create!(title: "Hôpital privé Clairval", adress: "317 Bd du Redon, 13009 Marseille", description: "Batterie Externe 27000mAh Rapide Power Bank 22.5 W PD3.0", price: 10, user: user4)
powerbank16 = Powerbank.create!(title: "M.A.C", adress: "69 Av. d'Haifa, 13008 Marseille", description: "Lasuki Batterie Externe Solaire 31200mAh", price: 5, user: user4)

# --------------------------

powerbank1.photo.attach(io: file, filename: "nes.png", content_type: "lewagon.png")
powerbank2.photo.attach(io: file, filename: "nes.png", content_type: "les-terrasses-du-port.jpg")
powerbank3.photo.attach(io: file, filename: "nes.png", content_type: "friche-belle-de-mai.jpg")
powerbank4.photo.attach(io: file, filename: "nes.png", content_type: "notre-dame-de-la-garde.jpg")

powerbank5.photo.attach(io: file, filename: "nes.png", content_type: "chateau-de-labuzine.jpg")
powerbank6.photo.attach(io: file, filename: "nes.png", content_type: "ccial-bonne-veine.jpg")
powerbank7.photo.attach(io: file, filename: "nes.png", content_type: "ccial-prado.jpg")
powerbank8.photo.attach(io: file, filename: "nes.png", content_type: "ccial-valentine.jpg")

powerbank9.photo.attach(io: file, filename: "nes.png", content_type: "gold_pres_de_marseille.jpg")
powerbank10.photo.attach(io: file, filename: "nes.png", content_type: "red-lion.jpeg")
powerbank11.photo.attach(io: file, filename: "nes.png", content_type: "emmaus.jpeg")
powerbank12.photo.attach(io: file, filename: "nes.png", content_type: "patinoire.jpg")

powerbank13.photo.attach(io: file, filename: "nes.png", content_type: "little-temple-bar.jpg")
powerbank14.photo.attach(io: file, filename: "nes.png", content_type: "campus-luminy.jpg")
powerbank15.photo.attach(io: file, filename: "nes.png", content_type: "clairval.jpeg")
powerbank16.photo.attach(io: file, filename: "nes.png", content_type: "mac-marseille.jpg")

# ------------------------------------

powerbank1.save!
powerbank2.save!
powerbank3.save!
powerbank4.save!

powerbank5.save!
powerbank6.save!
powerbank7.save!
powerbank8.save!

powerbank9.save!
powerbank10.save!
powerbank11.save!
powerbank12.save!

powerbank13.save!
powerbank14.save!
powerbank15.save!
powerbank16.save!


#  DateTime.new(a,m,j,h,m,s)

2.times do
  Reservation.create(
    start_date: DateTime.new(2023,12,5,8,0,0),
    end_date: DateTime.new(2023,12,5,10,30,0),
    user: user1
  )
end

2.times do
  Reservation.create(
    start_date: DateTime.new(2023,12,5,8,0,0),
    end_date: DateTime.new(2023,12,5,10,30,0),
    user: user2
  )
end

3.times do
  Reservation.create(
    start_date: DateTime.new(2023,12,5,8,0,0),
    end_date: DateTime.new(2023,12,5,10,30,0),
    user: user3
  )
end
