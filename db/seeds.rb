

Booking.destroy_all
Place.destroy_all
User.destroy_all

puts "Starting seed deployment..."

user1 = User.create(first_name:"Homer", last_name:"Simpson", email:"homer.simpson@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113961/simpsons-live_q9wvpo.jpg").open
user1.photo.attach(io: file, filename: "Homer.png", content_type: "image/png")
user2 = User.create(first_name:"Bilbo", last_name: "Baggins", email:"biblo.baggins@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/62d44a90-b227-11ea-affe-a1470b404b35_lzsvoy.jpg").open
user2.photo.attach(io: file, filename: "Bilbo.png", content_type: "image/png")
user3 = User.create(first_name:"Peter", last_name: "Venkman", email:"peter.venkman@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/Peter_hac347.png").open
user3.photo.attach(io: file, filename: "Peter.png", content_type: "image/png")
user4 = User.create(first_name:"Gomez", last_name: "Addams", email:"gomez.addams@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/gomez_q3qol7.jpg").open
user4.photo.attach(io: file, filename: "Gomez.png", content_type: "image/png")
user5 = User.create(first_name:"Cendrillon", last_name:"Princess", email:"cendrillon@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/cendrillon-250_gee42a.jpg").open
user5.photo.attach(io: file, filename: "Cendrillon.png", content_type: "image/png")
user6 = User.create(first_name:"Barbie", last_name:"Doll", email:"barbie@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/barbie_oi2xzs.png").open
user6.photo.attach(io: file, filename: "Barbie.png", content_type: "image/png")
user7 = User.create(first_name:"Shrek", last_name:"Ogre", email:"shrek@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/dbf6812f59e5080cf420f1056bfceb66f7d6a43a8df19ace503ea70596afc0ff_xur49k.jpg").open
user7.photo.attach(io: file, filename: "Shrek.png", content_type: "image/png")
user8 = User.create(first_name:"Robert", last_name: "Crawley", email:"robert.crawley@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/Robert_yxg1fz.png").open
user8.photo.attach(io: file, filename: "Crawley.png", content_type: "image/png")
user9 = User.create(first_name:"Albus", last_name: "Dumbledore", email:"albus.dumbledore@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/Albus_djrya8.png").open
user9.photo.attach(io: file, filename: "Dumbledore.png", content_type: "image/png")
user10 = User.create(first_name:"Luke", last_name: "Skywalker", email:"luke.skywalker@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113896/ac9c3c5403b811f2238c854185_qmfmcl.jpg").open
user10.photo.attach(io: file, filename: "Skywalker.png", content_type: "image/png")
user11 = User.create(first_name:"Walter", last_name: "White", email:"walter.white@gmail.com", password:"popfiction")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732113897/b51190101362045.5f1d68546ac50_dclxph.jpg").open
user11.photo.attach(io: file, filename: "Walter.png", content_type: "image/png")

##Simpson
place1 = Place.create(name: "Simpsons' house", address: "742 Evergreen Terrace, Springfield, Oregon, USA", beds: 4, price:27389 , user: user1, description:"Charmante maison familiale à Springfield, avec 4 chambres, salon spacieux, cuisine vintage et jardin accueillant. Idéale pour des vacances fun en famille !" )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022767/Simpson1_we1tla.png").open
place1.photos.attach(io: file, filename: "simpson1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022689/Simpson2_mk4a3d.png").open
place1.photos.attach(io: file, filename: "simpson2.png", content_type: "image/png")
#Hobbit
place2 = Place.create(name: "Bilbo's House", address: "501 Buckland Road, Matamata 3472, Nouvelle-Zélande", beds:2, price:324, user: user2, description:"Charmante maison troglodyte à Hobbiton, avec 1 chambre cosy, un salon confortable, une cuisine rustique et un jardin verdoyant. Idéale pour une retraite paisible au cœur de la Terre du Milieu, à deux pas des paysages enchanteurs et des sentiers de randonnée !" )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022686/Hobbit1_ezfnls.png").open
place2.photos.attach(io: file, filename: "hobbit1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit2_vfmqzt.png").open
place2.photos.attach(io: file, filename: "hobbit2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit3_iabyxz.png").open
place2.photos.attach(io: file, filename: "hobbit3.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022687/Hobbit4_wzaxbp.png").open
place2.photos.attach(io: file, filename: "hobbit4.png", content_type: "image/png")
#Ghostbusters
place3 = Place.create(name: "Ghostbusters' caserne", address: "14 N Moore St TriBeCa, New York, NY 10013-2413", beds:10, price:12734, user: user3, description:"Ancienne caserne de pompiers à New York, transformée en quartier général des Ghostbusters. Espaces spacieux, décor unique, et équipements modernes. Parfait pour les amateurs de paranormal et les aventuriers urbains !" )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022764/Ghostbuster1_cwera8.jpg").open
place3.photos.attach(io: file, filename: "ghostbuster1.png", content_type: "image/png")
#Addams
place4 = Place.create(name: "The Addams' Manor", address: "E. Grand St., Palatine Bridge, New York", beds:5, price:2178, user: user4, description:"Maison gothique et mystérieuse, spacieuse avec 5 chambres, un salon extravagant, et un jardin énigmatique. Ambiance étrange et décor unique, idéale pour les amateurs de l'étrange et de l’inattendu.")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022762/Addams1_ae8l8a.jpg").open
place4.photos.attach(io: file, filename: "addams1.png", content_type: "image/png")
#Cendrillon
place5 = Place.create(name: "Disney's castle", address: "Bd de Parc, 77700 Coupvray", beds:20, price: 10245, user: user5, description:"Splendide château de conte de fées, avec chambres élégantes, grandes salles et jardins féériques. Lieu magique pour une expérience royale inoubliable.")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney1_nuigxk.jpg").open
place5.photos.attach(io: file, filename: "cendrillon1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Disney2_khhrvo.jpg").open
place5.photos.attach(io: file, filename: "cendrillon2.png", content_type: "image/png")
#Ken
place6 = Place.create(name: "Ken's villa", address: "23825 Stuart Ranch Rd, Malibu, CA 90265, États-Unis", beds: 6, price:18984, user: user6, description:"Maison stylée de Ken, avec une grande piscine, un espace barbecue parfait pour des soirées entre amis, et un coin dédié à sa passion pour les chevaux. Ambiance chic et décontractée garantie !")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Ken1_ylctp0.png").open
place6.photos.attach(io: file, filename: "ken1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Ken2_xxxziz.png").open
place6.photos.attach(io: file, filename: "ken2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022766/Ken3_ucb4gr.png").open
place6.photos.attach(io: file, filename: "ken3.png", content_type: "image/png")
#Barbie
place7 = Place.create(name: "Barbie's Dreamhouse", address: "23835 Stuart Ranch Rd, Malibu, CA 90265, États-Unis", beds: 6, price: 22456, user: user6, description:"Maison glam et colorée de Barbie, avec piscine, salon élégant, cuisine moderne et jardin vibrant. Un séjour féérique et chic dans un cadre de rêve !")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022762/Barbie1_tssbvs.png").open
place7.photos.attach(io: file, filename: "barbie1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Barbie3_zct6qm.jpg").open
place7.photos.attach(io: file, filename: "barbie2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Barbie2_ut94bu.jpg").open
place7.photos.attach(io: file, filename: "barbie3.png", content_type: "image/png")
#Shrek
place8 = Place.create(name: "Shrek's Swamp", address: "Tomintoul, Ballindalloch AB37 9HU, Royaume-Uni", beds:2, price: 32 , user: user7, description:"Charmante maison en boue à la campagne, avec salon cosy, cuisine rustique et grand jardin. Idéale pour un séjour tranquille et naturel, loin de la ville.")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek1_ebrjzi.jpg").open
place8.photos.attach(io: file, filename: "shrek1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek2_htbqzu.jpg").open
place8.photos.attach(io: file, filename: "shrek2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek3_tcmzuc.jpg").open
place8.photos.attach(io: file, filename: "shrek3.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732096686/Shrek5_kp4tkw.jpg").open
place8.photos.attach(io: file, filename: "shrek4.png", content_type: "image/png")
#Downtown Abbey
place9 = Place.create(name: "Downtown Abbey", address: "Highclere Park, Highclere, Newbury RG20 9RN, Royaume-Uni", beds:20, price: 29753, user: user8, description:"Élégant château à l'ancienne, avec chambres luxueuses, salons raffinés et jardins immaculés. Vivez une expérience aristocratique dans un cadre historique et somptueux.")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Downtown1_vbdqbk.jpg").open
place9.photos.attach(io: file, filename: "downtown1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022763/Downtown2_gchnm9.jpg").open
place9.photos.attach(io: file, filename: "downtown2.png", content_type: "image/png")
file = URI.parse("https://livinspaces.net/wp-content/uploads/2019/11/Learning-First-Hand-About-Downton-Abbey-Esque-Interiors_05_featured.jpg").open
place9.photos.attach(io: file, filename: "downtown3.png", content_type: "image/png")
file = URI.parse("https://hips.hearstapps.com/toc.h-cdn.co/assets/16/10/1457623216-tcx0212107c.jpg?resize=980:*").open
place9.photos.attach(io: file, filename: "downtown4.png", content_type: "image/png")
#Hogwart
place10 = Place.create(name: "Hogwarts", address: "Dornie, Kyle of Lochalsh IV40 8DX, Royaume-Uni", beds:280, price: 37823, user: user9, description:"Château majestueux avec salles vastes, chambres secrètes, et jardins enchâssés. Un lieu enchanteur pour un séjour unique au cœur de la magie et du mystère.")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart1_tpltj3.jpg").open
place10.photos.attach(io: file, filename: "poudlard1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart2_fs5fmc.jpg").open
place10.photos.attach(io: file, filename: "poudlard2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022765/Hogwart3_kjv07k.jpg").open
place10.photos.attach(io: file, filename: "poudlard3.png", content_type: "image/png")
#Tatouine
place11 = Place.create(name: "Luke's house", address: "Hôtel Dakyanus, Route El Ferch BP 234, C207, Tataouine 3200, Tunisie", beds:4, price: 156, user: user10, description:"Maison troglodyte unique sur Tatouine, avec vues imprenables, espace spacieux et ambiance désertique. Parfaite pour une retraite isolée sous deux soleils." )
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022766/Luke1_czhvm5.jpg").open
place11.photos.attach(io: file, filename: "luke1.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022688/Luke2_dzcb52.jpg").open
place11.photos.attach(io: file, filename: "luke2.png", content_type: "image/png")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022688/Luke3_f2ltsr.jpg").open
place11.photos.attach(io: file, filename: "luke3.png", content_type: "image/png")
#BreakingBad
place12 = Place.create(name: "Walter's trailor", address: "1 Civic Plz NW, Albuquerque, NM 87102, États-Unis", beds: 2, price:184, user: user11, description:"Caravane vintage et authentique, avec espace cosy, cuisine équipée et vue désertique. Activité découverte de la chimie disponible pour une expérience unique. Parfaite pour les amateurs d'aventure et de science !")
file = URI.parse("https://res.cloudinary.com/dppoooykd/image/upload/v1732022685/BreakingBad1_re6ofx.jpg").open
place12.photos.attach(io: file, filename: "breakingbad.png", content_type: "image/png")

puts "seeding finished !  "
