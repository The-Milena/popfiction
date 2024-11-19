# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#create_table "places", force: :cascade do |t|
#  t.string "address"
#  t.integer "beds"
#  t.float "price"
#  t.string "picture"
#  t.bigint "user_id", null: false
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["user_id"], name: "index_places_on_user_id"
#end

#create_table "users", force: :cascade do |t|
#  t.string "email", default: "", null: false
#  t.string "encrypted_password", default: "", null: false
#  t.string "reset_password_token"
#  t.datetime "reset_password_sent_at"
#  t.datetime "remember_created_at"
#  t.datetime "created_at", null: false
#  t.datetime "updated_at", null: false
#  t.index ["email"], name: "index_users_on_email", unique: true
#  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#end

User.destroy_all
Place.destroy_all

User.create(first_name:"Homer", last_name:"Simpson", email:"homer.simpson@gmail.com", password:"totototo")
#User.create(first_name:"Bilbo", last_name: "Baggins", email:"biblo.baggins@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Peter", last_name: "Venkman", email:"peter.venkman@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Gomez", last_name: "Addams", email:"gomez.addams@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Cendrillon", last_name:"Princess", email:"cendrillon@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Barbie", last_name:"Doll", email:"barbie@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Shrek", last_name:"Ogre", email:"shrek@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Robert", last_name: "Crawley", email:"robert.crawley@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Albus", last_name: "Dumbledore", email:"albus.dumbledore@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Luke", last_name: "Skywalker", email:"luke.skywalker@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Randy", last_name: "Marsh", email:"randy.marsh@gmail.com", encrypted_password:"totototo")
#User.create(first_name:"Walter", last_name: "White", email:"walter.white@gmail.com", encrypted_password:"totototo")


file = URI.parse("https://preview.redd.it/irl-simpsons-house-v0-cg4fasthv5ya1.jpeg?width=1920&format=pjpg&auto=webp&s=395f2a53aab9b262211b71742ecad4f5656d5365").open
list = Place.create(address: "742 Evergreen Terrace, Springfield, Oregon, USA", beds: 4, price:273, user_id: 1, description:"Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !" )
list.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
#
##Simpson
#Place.create(address: "742 Evergreen Terrace, Springfield, Oregon, USA", beds: 4, price:273,89 , user_id: 1, description:"Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !" )
##Hobbit
#Place.create(address: "501 Buckland Road, Matamata 3472, Nouvelle-Zélande", beds:2, price:324,67, user_id: 2, description:"Charmante maison troglodyte à Hobbiton, avec 1 chambre cosy, un salon confortable, une cuisine rustique et un jardin verdoyant. Idéale pour une retraite paisible au cœur de la Terre du Milieu, à deux pas des paysages enchanteurs et des sentiers de randonnée !" )
##Ghostbusters
#Place.create(address: "14 N Moore St TriBeCa, New York, NY 10013-2413", beds:10, price:12 734,56, user_id: 3, description:"Ancienne caserne de pompiers à New York, transformée en quartier général des Ghostbusters. Espaces spacieux, décor unique, et équipements modernes. Parfait pour les amateurs de paranormal et les aventuriers urbains !" )
##Addams
#Place.create(address: "E. Grand St., Palatine Bridge, New York", beds:5, price:2 145,78, user_id: 4, description:"Maison gothique et mystérieuse, spacieuse avec 5 chambres, un salon extravagant, et un jardin énigmatique. Ambiance étrange et décor unique, idéale pour les amateurs de l'étrange et de l’inattendu.")
##Cendrillon
#Place.create(address: "Bd de Parc, 77700 Coupvray", beds:20, price: 10 273,45, user_id: 5, description:"Splendide château de conte de fées, avec chambres élégantes, grandes salles et jardins féériques. Lieu magique pour une expérience royale inoubliable.")
##Ken
#Place.create(address: "23825 Stuart Ranch Rd, Malibu, CA 90265, États-Unis", beds: 6, price:18 927,84, user_id: 6, description:"Maison stylée de Ken, avec une grande piscine, un espace barbecue parfait pour des soirées entre amis, et un coin dédié à sa passion pour les chevaux. Ambiance chic et décontractée garantie !")
##Barbie
#Place.create(address: "23835 Stuart Ranch Rd, Malibu, CA 90265, États-Unis", beds: 6, price: 22 473,56, user_id: 6, description:"Maison glam et colorée de Barbie, avec piscine, salon élégant, cuisine moderne et jardin vibrant. Un séjour féérique et chic dans un cadre de rêve !")
##Shrek
#Place.create(address: "Tomintoul, Ballindalloch AB37 9HU, Royaume-Uni", beds:2, price: 32,76 , user_id: 7, description:"Charmante maison en boue à la campagne, avec salon cosy, cuisine rustique et grand jardin. Idéale pour un séjour tranquille et naturel, loin de la ville.")
##Downtown Abbey
#Place.create(address: "Highclere Park, Highclere, Newbury RG20 9RN, Royaume-Uni", beds:20, price: 29 746,53, user_id: 8, description:"Élégant château à l'ancienne, avec chambres luxueuses, salons raffinés et jardins immaculés. Vivez une expérience aristocratique dans un cadre historique et somptueux.")
##Hogwart
#Place.create(address: "Dornie, Kyle of Lochalsh IV40 8DX, Royaume-Uni", beds:280, price: 39 785,23, user_id: 9, description:"Château majestueux avec salles vastes, chambres secrètes, et jardins enchâssés. Un lieu enchanteur pour un séjour unique au cœur de la magie et du mystère.")
##Tatouine
#Place.create(address: "Hôtel Dakyanus, Route El Ferch BP 234, C207, Tataouine 3200, Tunisie", beds:4, price: 137,56, user_id: 10, description:"Maison troglodyte unique sur Tatouine, avec vues imprenables, espace spacieux et ambiance désertique. Parfaite pour une retraite isolée sous deux soleils." )
##South Park
#Place.create(address: "450 US Hwy 285, Fairplay, CO 80440, États-Unis", beds:4, price:216,78, user_id: 11, description:"Maison simple et accueillante à South Park, avec salon confortable, chambres familiales et jardin spacieux. Idéale pour un séjour tranquille dans une ville pleine de surprises.")
##BreakingBad
#Place.create(address: "1 Civic Plz NW, Albuquerque, NM 87102, États-Unis", beds: 2, price:199,84, user_id: 12, description:"Caravane vintage et authentique, avec espace cosy, cuisine équipée et vue désertique. Activité découverte de la chimie disponible pour une expérience unique. Parfaite pour les amateurs d'aventure et de science !")
#
