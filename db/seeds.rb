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
file1 = file = URI.open("https://www-img.lewagon.com/cTTZTQ2EneDwh96cFOoDGnFKw5GMiAHOS8iYnfSPL3U/rs:fill:320:400/plain/s3://wagon-www/fj45zu3ho147ip0oyzcehl90erbu")
file2 = file = URI.open("https://tourisme-marseille.com/wp-content/uploads/2021/09/marseille-xxl-16-oeuvres-de-16m%C2%B2-les-terrasses-du-port-marseille-27.jpg")
file3 = file = URI.open("https://www.marseille-tourisme.com/app/uploads/marseille-tourisme/2022/07/thumbs/Toit-terrasse-On_Air_2019%C2%A9CarolineDutrey-2-1920x960-crop-1658831558.jpg")
file4 = file = URI.open("https://www.detoursenfrance.fr/sites/art-de-vivre/files/Import/det_notre-dame-de-la-garde-marseille_BR.jpg")

file5 = file = URI.open("https://madeinmarseille.net/actualites-marseille/chateau-de-labuzine-credit-buzine-2.jpg")
file6 = file = URI.open("https://www.bonneveine.com/wp-content/uploads/2018/07/480x300-centreB.jpg")
file7 = file = URI.open("https://madeinmarseille.net/actualites-marseille/2018/03/centre-commercial-prado.jpg")
file8 = file = URI.open("https://www.la-galerie.com/media/centers/thumbnail/la-valentine-vignette.jpg")

file9 = file = URI.open("https://www.resonance.golf/wp-content/uploads/2020/07/golf_pres_de_marseille-1920x1080.jpg")
file10 = file = URI.open("https://www.architecte-agencement-decoration.com/wp-content/uploads/2019/03/Pub-Anglais-Style-Victorien-The-Red-Lion-Marseille-Marseille-Edmond-Garnier-DCA-Decoration-Concept-Amenagement-2.jpg")
file11 = file = URI.open("https://madeinmarseille.net/actualites-marseille/2016/03/nouvelle-boutique-venue-emmaus-marseille.jpg")
file12 = file = URI.open("https://www.vert-marine.com/wp-content/uploads/2021/09/patinoireMarseille.jpeg")

file13 = file = URI.open("https://marseille.love-spots.com/wp-content/uploads/2014/11/little-temple-bar_lovespots.jpg")
file14 = file = URI.open("https://madeinmarseille.net/actualites-marseille/2017/03/campus-luminy-batiment-trp1-trp2.jpg")
file15 = file = URI.open("https://hopital-prive-clairval-marseille.ramsaysante.fr/sites/default/files/styles/608x/public/img_1053.jpg.webp?itok=15-4A2B4")
file16 = file = URI.open("https://madeinmarseille.net/actualites-marseille/musee-art-contemporain-mac.jpg")

# --------------------------

powerbank1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
powerbank2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
powerbank3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
powerbank4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")

powerbank5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
powerbank6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
powerbank7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
powerbank8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")

powerbank9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
powerbank10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
powerbank11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
powerbank12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")

powerbank13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
powerbank14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
powerbank15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
powerbank16.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")

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
