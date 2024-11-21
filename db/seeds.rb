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

Booking.destroy_all
Place.destroy_all
User.destroy_all

puts "Starting seed deployment..."

#users_email = ["homer.simpson@gmail.com", "biblo.baggins@gmail.com", "peter.venkman@gmail.com" ]
#@users_first_name = ["Homer", "Bilbo", "Peter"]
#@users_last_name = ["Simpson", "Baggins", "Venkman"]
#@places_address = ["742 Evergreen Terrace, Springfield, Oregon, USA", "501 Buckland Road, Matamata 3472, Nouvelle-Zélande", "14 N Moore St TriBeCa, New York, NY 10013-2413"]
#@places_description = [
#"Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !",
#"Charmante maison troglodyte à Hobbiton, avec 1 chambre cosy, un salon confortable, une cuisine rustique et un jardin verdoyant. Idéale pour une retraite paisible au cœur de la Terre du Milieu, à deux pas des paysages enchanteurs et des sentiers de randonnée !",
#"Ancienne caserne de pompiers à New York, transformée en quartier général des Ghostbusters. Espaces spacieux, décor unique, et équipements modernes. Parfait pour les amateurs de paranormal et les aventuriers urbains !"
#]
#
#@index = 0
#
#users_email.each do |user_email|
#  user = User.new
#  user.email = user_email
#  user.first_name = @users_first_name[@index]
#  user.last_name = @users_last_name[@index]
#  user.password = "totototo"
#  user.save!
#  place = Place.new
#  place.address = @places_address[@index]
#  place.beds = rand(1..5)
#  place.price = rand(50..5000)
#  place.description = @places_description[@index]
#  place.user_id = user.id
#  place.save!
#  @index += 1
#end


user1 = User.create(first_name:"Homer", last_name:"Simpson", email:"homer.simpson@gmail.com", password:"totototo")
user2 = User.create(first_name:"Bilbo", last_name: "Baggins", email:"biblo.baggins@gmail.com", password:"totototo")
user3 = User.create(first_name:"Peter", last_name: "Venkman", email:"peter.venkman@gmail.com", password:"totototo")
user4 = User.create(first_name:"Gomez", last_name: "Addams", email:"gomez.addams@gmail.com", password:"totototo")
user5 = User.create(first_name:"Cendrillon", last_name:"Princess", email:"cendrillon@gmail.com", password:"totototo")
user6 = User.create(first_name:"Barbie", last_name:"Doll", email:"barbie@gmail.com", password:"totototo")
user7 = User.create(first_name:"Shrek", last_name:"Ogre", email:"shrek@gmail.com", password:"totototo")
user8 = User.create(first_name:"Robert", last_name: "Crawley", email:"robert.crawley@gmail.com", password:"totototo")
user9 = User.create(first_name:"Albus", last_name: "Dumbledore", email:"albus.dumbledore@gmail.com", password:"totototo")
user10 = User.create(first_name:"Luke", last_name: "Skywalker", email:"luke.skywalker@gmail.com", password:"totototo")
user11 = User.create(first_name:"Walter", last_name: "White", email:"walter.white@gmail.com", password:"totototo")


#file = URI.parse("https://preview.redd.it/irl-simpsons-house-v0-cg4fasthv5ya1.jpeg?width=1920&format=pjpg&auto=webp&s=395f2a53aab9b262211b71742ecad4f5656d5365").open
#list = Place.create(address: "742 Evergreen Terrace, Springfield, Oregon, USA", beds: 4, price:273, user_id: 3, description:"Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !" )
#list.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
#
# Simpson
place1 = Place.create!(
  name: "Simpsons' House",
  address: "742 Evergreen Terrace, Springfield, Oregon, USA",
  beds: 4,
  price: 27389,
  category: "Cartoons & Animation",
  user: user1,
  description: "Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022767/Simpson1_we1tla.png").open
place1.photos.attach(io: file, filename: "simpson1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022689/Simpson2_mk4a3d.png").open
place1.photos.attach(io: file, filename: "simpson2.png", content_type: "image/png")

# Hobbit
place2 = Place.create!(
  name: "Bilbo's House",
  address: "501 Buckland Road, Matamata 3472, Nouvelle-Zélande",
  beds: 2,
  price: 324,
  category: "Fantasy Worlds",
  user: user2,
  description: "Charmante maison troglodyte à Hobbiton, avec 1 chambre cosy, un salon confortable, une cuisine rustique et un jardin verdoyant. Idéale pour une retraite paisible au cœur de la Terre du Milieu !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022686/Hobbit1_ezfnls.png").open
place2.photos.attach(io: file, filename: "hobbit1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit2_vfmqzt.png").open
place2.photos.attach(io: file, filename: "hobbit2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit3_iabyxz.png").open
place2.photos.attach(io: file, filename: "hobbit3.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit4_wzaxbp.png").open
place2.photos.attach(io: file, filename: "hobbit4.png", content_type: "image/png")

# Ghostbusters
place3 = Place.create!(
  name: "Ghostbusters' Headquarters",
  address: "14 N Moore St TriBeCa, New York, NY 10013-2413",
  beds: 10,
  price: 12734,
  category: "Horror & Mystery",
  user: user3,
  description: "Ancienne caserne de pompiers à New York, transformée en quartier général des Ghostbusters. Espaces spacieux, décor unique, et équipements modernes. Parfait pour les amateurs de paranormal et les aventuriers urbains !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022764/Ghostbuster1_cwera8.jpg").open
place3.photos.attach(io: file, filename: "ghostbuster1.png", content_type: "image/png")

# Addams
place4 = Place.create!(
  name: "The Addams' Manor",
  address: "E. Grand St., Palatine Bridge, New York",
  beds: 5,
  price: 2178,
  category: "Horror & Mystery",
  user: user4,
  description: "Maison gothique et mystérieuse, spacieuse avec 5 chambres, un salon extravagant, et un jardin énigmatique. Idéale pour les amateurs de l'étrange et de l’inattendu."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022762/Addams1_ae8l8a.jpg").open
place4.photos.attach(io: file, filename: "addams1.png", content_type: "image/png")

# Cendrillon
place5 = Place.create!(
  name: "Disney's Castle",
  address: "Bd de Parc, 77700 Coupvray",
  beds: 20,
  price: 10245,
  category: "Royal Castles",
  user: user5,
  description: "Splendide château de conte de fées, avec chambres élégantes, grandes salles et jardins féériques. Lieu magique pour une expérience royale inoubliable."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney1_nuigxk.jpg").open
place5.photos.attach(io: file, filename: "cendrillon1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney2_khhrvo.jpg").open
place5.photos.attach(io: file, filename: "cendrillon2.png", content_type: "image/png")

# Ken
place6 = Place.create!(
  name: "Ken's Villa",
  address: "23825 Stuart Ranch Rd, Malibu, CA 90265, États-Unis",
  beds: 6,
  price: 18984,
  category: "Luxury",
  user: user6,
  description: "Maison stylée de Ken, avec une grande piscine, un espace barbecue parfait pour des soirées entre amis. Ambiance chic et décontractée garantie !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Ken1_ylctp0.png").open
place6.photos.attach(io: file, filename: "ken1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Ken2_xxxziz.png").open
place6.photos.attach(io: file, filename: "ken2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022766/Ken3_ucb4gr.png").open
place6.photos.attach(io: file, filename: "ken3.png", content_type: "image/png")

# Barbie
place7 = Place.create!(
  name: "Barbie's Dreamhouse",
  address: "23835 Stuart Ranch Rd, Malibu, CA 90265, États-Unis",
  beds: 6,
  price: 22456,
  category: "Luxury",
  user: user6,
  description: "Maison glam et colorée de Barbie, avec piscine, salon élégant, cuisine moderne et jardin vibrant. Un séjour féérique et chic dans un cadre de rêve !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022762/Barbie1_tssbvs.png").open
place7.photos.attach(io: file, filename: "barbie1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Barbie3_zct6qm.jpg").open
place7.photos.attach(io: file, filename: "barbie2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Barbie2_ut94bu.jpg").open
place7.photos.attach(io: file, filename: "barbie3.png", content_type: "image/png")

# Shrek
place8 = Place.create!(
  name: "Shrek's Swamp",
  address: "Tomintoul, Ballindalloch AB37 9HU, Royaume-Uni",
  beds: 2,
  price: 32,
  category: "Fantasy Worlds",
  user: user7,
  description: "Charmante maison en boue à la campagne, avec salon cosy, cuisine rustique et grand jardin. Idéale pour un séjour tranquille et naturel, loin de la ville."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek1_ebrjzi.jpg").open
place8.photos.attach(io: file, filename: "shrek1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek2_htbqzu.jpg").open
place8.photos.attach(io: file, filename: "shrek2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek3_tcmzuc.jpg").open
place8.photos.attach(io: file, filename: "shrek3.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek5_kp4tkw.jpg").open
place8.photos.attach(io: file, filename: "shrek4.png", content_type: "image/png")

# Downtown Abbey
place9 = Place.create!(
  name: "Downtown Abbey Castle",
  address: "Highclere Park, Highclere, Newbury RG20 9RN, Royaume-Uni",
  beds: 20,
  price: 29753,
  category: "Royal Castles",
  user: user8,
  description: "Élégant château à l'ancienne, avec chambres luxueuses, salons raffinés et jardins immaculés. Vivez une expérience aristocratique dans un cadre historique et somptueux."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Downtown1_vbdqbk.jpg").open
place9.photos.attach(io: file, filename: "downtown1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Downtown2_gchnm9.jpg").open
place9.photos.attach(io: file, filename: "downtown2.png", content_type: "image/png")
file = URI.parse("https://livinspaces.net/wp-content/uploads/2019/11/Learning-First-Hand-About-Downton-Abbey-Esque-Interiors_05_featured.jpg").open
place9.photos.attach(io: file, filename: "downtown3.png", content_type: "image/png")
file = URI.parse("https://hips.hearstapps.com/toc.h-cdn.co/assets/16/10/1457623216-tcx0212107c.jpg?resize=980:*").open
place9.photos.attach(io: file, filename: "downtown4.png", content_type: "image/png")

# Hogwarts
place10 = Place.create!(
  name: "Hogwarts",
  address: "Dornie, Kyle of Lochalsh IV40 8DX, Royaume-Uni",
  beds: 280,
  price: 37823,
  category: "Magical Worlds",
  user: user9,
  description: "Château majestueux avec salles vastes, chambres secrètes, et jardins enchâssés. Un lieu enchanteur pour un séjour unique au cœur de la magie et du mystère."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart1_tpltj3.jpg").open
place10.photos.attach(io: file, filename: "poudlard1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart2_fs5fmc.jpg").open
place10.photos.attach(io: file, filename: "poudlard2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart3_kjv07k.jpg").open
place10.photos.attach(io: file, filename: "poudlard3.png", content_type: "image/png")

# Tatooine
place11 = Place.create!(
  name: "Luke's Desert Home",
  address: "Hôtel Dakyanus, Route El Ferch BP 234, C207, Tataouine 3200, Tunisie",
  beds: 4,
  price: 156,
  category: "Adventure & Sci-Fi",
  user: user10,
  description: "Maison troglodyte unique sur Tatouine, avec vues imprenables, espace spacieux et ambiance désertique. Parfaite pour une retraite isolée sous deux soleils."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022766/Luke1_czhvm5.jpg").open
place11.photos.attach(io: file, filename: "luke1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022688/Luke2_dzcb52.jpg").open
place11.photos.attach(io: file, filename: "luke2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022688/Luke3_f2ltsr.jpg").open
place11.photos.attach(io: file, filename: "luke3.png", content_type: "image/png")

# Breaking Bad
place12 = Place.create!(
  name: "Walter's RV",
  address: "1 Civic Plz NW, Albuquerque, NM 87102, États-Unis",
  beds: 2,
  price: 184,
  category: "Adventure & Sci-Fi",
  user: user11,
  description: "Caravane vintage et authentique, avec espace cosy, cuisine équipée et vue désertique. Parfaite pour les amateurs d'aventure et de science !"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022685/BreakingBad1_re6ofx.jpg").open
place12.photos.attach(io: file, filename: "breakingbad.png", content_type: "image/png")


puts "seeding finished !  "
