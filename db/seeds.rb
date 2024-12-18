

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


#user1 = User.create(first_name:"Homer", last_name:"Simpson", email:"homer.simpson@gmail.com", password:"azerty")
#user2 = User.create(first_name:"Bilbo", last_name: "Baggins", email:"bilbo.baggins@gmail.com", password:"azerty")
#user3 = User.create(first_name:"Peter", last_name: "Venkman", email:"peter.venkman@gmail.com", password:"azerty")
#user4 = User.create(first_name:"Gomez", last_name: "Addams", email:"gomez.addams@gmail.com", password:"azerty")
#user5 = User.create(first_name:"Cinderella", last_name:"Princess", email:"cendrillon@gmail.com", password:"azerty")
#user6 = User.create(first_name:"Barbie", last_name:"Doll", email:"barbie@gmail.com", password:"azerty")
#user7 = User.create(first_name:"Shrek", last_name:"Ogre", email:"shrek@gmail.com", password:"azerty")
#user8 = User.create(first_name:"Robert", last_name: "Crawley", email:"robert.crawley@gmail.com", password:"azerty")
#user9 = User.create(first_name:"Albus", last_name: "Dumbledore", email:"albus.dumbledore@gmail.com", password:"azerty")
#user10 = User.create(first_name:"Luke", last_name: "Skywalker", email:"luke.skywalker@gmail.com", password:"azerty")
#user11 = User.create(first_name:"Walter", last_name: "White", email:"walter.white@gmail.com", password:"azerty")

puts "Starting User seed deployment..."

user1 = User.create(first_name:"Homer", last_name:"Simpson", email:"homer.simpson@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113961/simpsons-live_q9wvpo.jpg").open
user1.photo.attach(io: file, filename: "Homer.png", content_type: "image/png")
user2 = User.create(first_name:"Bilbo", last_name: "Baggins", email:"biblo.baggins@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/62d44a90-b227-11ea-affe-a1470b404b35_lzsvoy.jpg").open
user2.photo.attach(io: file, filename: "Bilbo.png", content_type: "image/png")
user3 = User.create(first_name:"Peter", last_name: "Venkman", email:"peter.venkman@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/Peter_hac347.png").open
user3.photo.attach(io: file, filename: "Peter.png", content_type: "image/png")
user4 = User.create(first_name:"Gomez", last_name: "Addams", email:"gomez.addams@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/gomez_q3qol7.jpg").open
user4.photo.attach(io: file, filename: "Gomez.png", content_type: "image/png")
user5 = User.create(first_name:"Cinderella", last_name:"Princess", email:"cendrillon@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/cendrillon-250_gee42a.jpg").open
user5.photo.attach(io: file, filename: "Cendrillon.png", content_type: "image/png")
user6 = User.create(first_name:"Barbie", last_name:"Doll", email:"barbie@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/barbie_oi2xzs.png").open
user6.photo.attach(io: file, filename: "Barbie.png", content_type: "image/png")
user7 = User.create(first_name:"Shrek", last_name:"Ogre", email:"shrek@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/dbf6812f59e5080cf420f1056bfceb66f7d6a43a8df19ace503ea70596afc0ff_xur49k.jpg").open
user7.photo.attach(io: file, filename: "Shrek.png", content_type: "image/png")
user8 = User.create(first_name:"Robert", last_name: "Crawley", email:"robert.crawley@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/Robert_yxg1fz.png").open
user8.photo.attach(io: file, filename: "Crawley.png", content_type: "image/png")
user9 = User.create(first_name:"Albus", last_name: "Dumbledore", email:"albus.dumbledore@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/Albus_djrya8.png").open
user9.photo.attach(io: file, filename: "Dumbledore.png", content_type: "image/png")
user10 = User.create(first_name:"Luke", last_name: "Skywalker", email:"luke.skywalker@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/ac9c3c5403b811f2238c854185_qmfmcl.jpg").open
user10.photo.attach(io: file, filename: "Skywalker.png", content_type: "image/png")
user11 = User.create(first_name:"Walter", last_name: "White", email:"walter.white@gmail.com", password:"azerty")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/b51190101362045.5f1d68546ac50_dclxph.jpg").open
user11.photo.attach(io: file, filename: "Walter.png", content_type: "image/png")

puts "Starting Places seed deployment..."

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
  description: "Charming family home in Springfield, with 4 bedrooms, spacious living room, vintage kitchen and welcoming garden. Ideal for a fun family holiday!"
)

file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022767/Simpson1_we1tla.png").open
place1.photos.attach(io: file, filename: "simpson1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022689/Simpson2_mk4a3d.png").open
place1.photos.attach(io: file, filename: "simpson2.png", content_type: "image/png")


# Hobbit
place2 = Place.create!(
  name: "Bilbo's House",
  address: "501 Buckland Road, Matamata 3472, New Zealand",
  beds: 2,
  price: 324,
  category: "Fantasy Worlds",
  user: user2,
  description: "Traditional troglodyte house in Hobbiton, with 1 cosy bedroom, a comfortable living room, a rustic kitchen and a leafy garden. Ideal for a peaceful retreat in the heart of Middle-earth!"
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
  address: "14 N Moore St TriBeCa, New York, NY 10013-2413, USA",
  beds: 10,
  price: 12734,
  category: "Horror & Mystery",
  user: user3,
  description: "A former fire station in New York, transformed into the Ghostbusters headquarters. Spacious rooms, unique decor and modern facilities. Perfect for paranormal enthusiasts and urban adventurers!"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022764/Ghostbuster1_cwera8.jpg").open
place3.photos.attach(io: file, filename: "ghostbuster1.png", content_type: "image/png")

# Addams
place4 = Place.create!(
  name: "The Addams' Manor",
  address: "E. Grand St., Palatine Bridge, New York, USA",
  beds: 5,
  price: 2178,
  category: "Horror & Mystery",
  user: user4,
  description: "Spacious, mysterious Gothic house with 5 bedrooms, extravagant lounge and enigmatic garden. Ideal for lovers of the strange and unexpected."
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
  description: "Splendid fairytale castle, with elegant rooms, grand halls and enchanting gardens. A magical setting for an unforgettable royal experience."
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney1_nuigxk.jpg").open
place5.photos.attach(io: file, filename: "cendrillon1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney2_khhrvo.jpg").open
place5.photos.attach(io: file, filename: "cendrillon2.png", content_type: "image/png")

# Ken
place6 = Place.create!(
  name: "Ken's Villa",
  address: "23825 Stuart Ranch Rd, Malibu, CA 90265, United States",
  beds: 6,
  price: 18984,
  category: "Luxury",
  user: user6,
  description: "Ken's stylish house, with a large swimming pool and barbecue area perfect for evenings out with friends. A chic, relaxed atmosphere guaranteed!"
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
  address: "23835 Stuart Ranch Rd, Malibu, CA 90265, United States",
  beds: 6,
  price: 22456,
  category: "Luxury",
  user: user6,
  description: "Barbie's glamorous, colourful home, with swimming pool, elegant living room, modern kitchen and vibrant garden. A magical, chic stay in a dream setting!"
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
  address: "Tomintoul, Ballindalloch AB37 9HU, United Kingdom",
  beds: 2,
  price: 32,
  category: "Fantasy Worlds",
  user: user7,
  description: "Charming mud house in the countryside, with cosy living room, rustic kitchen and large garden. Ideal for a peaceful, natural break away from the city."
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
  address: "Highclere Park, Highclere, Newbury RG20 9RN, United Kingdom",
  beds: 20,
  price: 29753,
  category: "Royal Castles",
  user: user8,
  description: "An elegant, old-fashioned château with luxurious rooms, refined salons and immaculate gardens. Enjoy an aristocratic experience in a sumptuous, historic setting."
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
  address: "Dornie, Kyle of Lochalsh IV40 8DX, United Kingdom",
  beds: 280,
  price: 37823,
  category: "Magical Worlds",
  user: user9,
  description: "A majestic castle with vast rooms, secret chambers and enchanted gardens. An enchanting setting for a unique stay at the heart of magic and mystery."
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
  address: "Hôtel Dakyanus, Route El Ferch BP 234, C207, Tataouine 3200, Tunisia",
  beds: 4,
  price: 156,
  category: "Adventure & Sci-Fi",
  user: user10,
  description: "Unique troglodyte house on Tatouine, with breathtaking views, spacious accommodation and desert ambience. Perfect for a secluded retreat under two suns."
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
  address: "1 Civic Plz NW, Albuquerque, NM 87102, USA",
  beds: 2,
  price: 184,
  category: "Adventure & Sci-Fi",
  user: user11,
  description: "Authentic vintage caravan, with cosy space, fully equipped kitchen and desert views. Perfect for adventure and science lovers!"
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022685/BreakingBad1_re6ofx.jpg").open
place12.photos.attach(io: file, filename: "breakingbad.png", content_type: "image/png")

puts "Starting Cars seed deployment..."

car1 = Car.create!(
  name: "Delorean",
  description: "This DeLorean is a futuristic car modified into a time machine, equipped with a flux capacitor and powered by plutonium or a 1.21 gigawatt generator.",
  price: 297
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732181266/dolorean_fik8dm.png").open
car1.photo.attach(io: file, filename: "DeLorean.png", content_type: "image/png")

car2 = Car.create!(
  name: "Ford Explorer",
  description: "This Ford Explorer is a rugged vehicle with a unique design, combining style and performance. With its vibrant colors and iconic logo, it takes you straight into the world of the famous park. Ideal for modern adventurers, it blends comfort and power while offering an unforgettable look.",
  price: 297
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732181265/71rOl5ZIqDL_skv5lx.jpg").open
car2.photo.attach(io: file, filename: "jurassicpark.png", content_type: "image/png")

car3 = Car.create!(
  name: "Batmobile",
  description: "The Batmobile, Batman's legendary vehicle, combines power, futuristic technology, and unique design. It embodies elegance and performance, ready to race through the streets to fight crime. Equipped with sophisticated weaponry, high-tech gadgets, and an imposing silhouette, it's the ultimate superhero car.",
  price: 297
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732181265/1989-Batmobile_gieo4e.jpg").open
car3.photo.attach(io: file, filename: "batmobile.png", content_type: "image/png")


car4 = Car.create!(
  name: "Van Mystery Machine",
  description: "This iconic van that’s instantly recognizable. With its vibrant green and orange design, it’s the perfect vehicle for the Mystery Inc. team. Spacious and quirky, it embodies the fun, adventurous spirit of the classic animated series. Equipped for mystery-solving and always ready for action, this van is a nostalgic ride full of charm and character!",
  price: 297
)
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732181266/replique-scooby-doo-mistery-machine-van-oc-db4c_oapuue.jpg").open
car4.photo.attach(io: file, filename: "ScoobyDoo.png", content_type: "image/png")

puts "seeding finished !  "
